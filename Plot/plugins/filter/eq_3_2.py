# All rights reserved (c) 2022, Vladimir Botka <vbotka@gmail.com>
# Simplified BSD License, https://opensource.org/licenses/BSD-2-Clause

from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from ansible.errors import AnsibleFilterError
from ansible.module_utils.common._collections_compat import Sequence

import hamming_digital_filters.gradient as hdf
import json
import numpy


def eq_3_2(fn, vg, fnorm, gtype, f_critical=0.1, no_filter_points=7):
    if not isinstance(fn, Sequence):
        raise AnsibleFilterError('First argument for eq_3_2 must be list. %s is %s' %
                                 (fn, type(fn)))
    if not isinstance(vg, Sequence):
        raise AnsibleFilterError('Second argument for eq_3_2 must be list. %s is %s' %
                                 (vg, type(vg)))
    if not isinstance(fnorm, float):
        raise AnsibleFilterError('Third argument for eq_3_2 must be float. %s is %s' %
                                 (fnorm, type(fnorm)))
    if not isinstance(gtype, str):
        raise AnsibleFilterError('Fourth argument for eq_3_2 must be string. %s is %s' %
                                 (gtype, type(gtype)))
    f = [(1.0 - x) * fnorm for x in fn]
    dv = vg[1] - vg[0]
    if gtype == "hamming":
        dfdv = hdf.gradient_nr(f, dv, f_critical, no_filter_points)
    else:
        dfdv = numpy.gradient(f, dv)
    cl = [(1.0 - x) for x in dfdv]
    return json.dumps(cl)


class FilterModule(object):
    ''' Thesis math.
        eq.3.2. Claculate normalized LF C from surface potential.
                We don't need Cox. The result will normalized capacity. '''

    def filters(self):
        return {
            'eq_3_2': eq_3_2,
        }
