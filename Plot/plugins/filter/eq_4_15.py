# All rights reserved (c) 2022, Vladimir Botka <vbotka@gmail.com>
# Simplified BSD License, https://opensource.org/licenses/BSD-2-Clause

from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from ansible.errors import AnsibleFilterError
from ansible.module_utils.common._collections_compat import Sequence

import json


def _dit(cl, ch, cox):
    q = 1.602e-19
    return ((cl * cox) / (1.0 - cl) - (ch * cox) / (1.0 - ch)) / q


def eq_4_15(cl, ch, cox):
    if not isinstance(cl, Sequence):
        raise AnsibleFilterError('First argument for eq_4_15 must be list. %s is %s' %
                                 (cl, type(cl)))
    if not isinstance(ch, Sequence):
        raise AnsibleFilterError('Second argument for eq_4_15 must be list. %s is %s' %
                                 (ch, type(ch)))
    if not isinstance(cox, float):
        raise AnsibleFilterError('Second argument for eq_4_15 must be list. %s is %s' %
                                 (cox, type(cox)))
    dit_list = [_dit(cli, chi, cox) for cli, chi in zip(cl, ch)]
    return json.dumps(dit_list)


class FilterModule(object):
    ''' Thesis math.
        eq.4.15. Calculate the density of interface traps.
        Both cl (LF CV) and ch (HF CV) are normalized C/Cox. '''

    def filters(self):
        return {
            'eq_4_15': eq_4_15,
        }
