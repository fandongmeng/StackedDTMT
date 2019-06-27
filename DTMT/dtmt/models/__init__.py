# coding=utf-8

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import dtmt.models.rnnsearch

def get_model(name, lrp=False):
    name = name.lower()

    if name == "rnnsearch":
        return dtmt.models.rnnsearch.RNNsearch
    else:
        raise LookupError("Unknown model %s" % name)
