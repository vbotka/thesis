# All rights reserved (c) 2022, Vladimir Botka <vbotka@gmail.com>
# Simplified BSD License, https://opensource.org/licenses/BSD-2-Clause

from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from ansible.errors import AnsibleFilterError
from ansible.module_utils.common._collections_compat import Sequence

import json
import numpy


def eq_4_17(fn, fnorm, bulk, stype):
    if not isinstance(fn, Sequence):
        raise AnsibleFilterError('First argument for eq_4_17 must be list. %s is %s' %
                                 (fn, type(fn)))
    if not isinstance(fnorm, float):
        raise AnsibleFilterError('Second argument for eq_4_17 must be float. %s is %s' %
                                 (fnorm, type(fnorm)))
    if not isinstance(bulk, float):
        raise AnsibleFilterError('Third argument for eq_4_17 must be float. %s is %s' %
                                 (bulk, type(bulk)))
    if not isinstance(stype, str):
        raise AnsibleFilterError('Fourth argument for eq_4_17 must be string. %s is %s' %
                                 (bulk, type(bulk)))
    k = 1.38e-23
    T = 300
    q = 1.602e-19
    ni = 1.45e16
    ff = (k * T / q) * numpy.log(bulk / ni)
    if stype == 'P':
        ff = - ff
    e = [((1.0 - f) * fnorm + 0.56 + ff) for f in fn]
    return json.dumps(e)


class FilterModule(object):
    ''' Thesis math.
        eq.4.17. Calculate position of Dit in the forbiden band. '''

    def filters(self):
        return {
            'eq_4_17': eq_4_17,
        }
