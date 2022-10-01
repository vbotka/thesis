# All rights reserved (c) 2022, Vladimir Botka <vbotka@gmail.com>
# Simplified BSD License, https://opensource.org/licenses/BSD-2-Clause

from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from ansible.errors import AnsibleFilterError
from ansible.module_utils.common._collections_compat import Sequence

from mos_math import basics as mm
import json


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
    return json.dumps(mm.clf_from_fi(fn, vg, fnorm, gtype, f_critical, no_filter_points))


def eq_4_15(clf, chf, cox):
    if not isinstance(clf, Sequence):
        raise AnsibleFilterError('First argument for eq_4_15 must be list. %s is %s' %
                                 (clf, type(clf)))
    if not isinstance(chf, Sequence):
        raise AnsibleFilterError('Second argument for eq_4_15 must be list. %s is %s' %
                                 (chf, type(chf)))
    if not isinstance(cox, float):
        raise AnsibleFilterError('Second argument for eq_4_15 must be list. %s is %s' %
                                 (cox, type(cox)))
    return json.dumps(mm.dit_from_clf_chf(clf, chf, cox))


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
    return json.dumps(mm.eband_of_dit(fn, fnorm, bulk, stype))


class FilterModule(object):
    ''' Thesis equations. '''

    def filters(self):
        return {
            'eq_3_2': eq_3_2,
            'eq_4_15': eq_4_15,
            'eq_4_17': eq_4_17,
        }
