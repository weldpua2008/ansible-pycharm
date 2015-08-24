import json
import urllib2
from distutils.version import LooseVersion

def versions(package_name):
    url = "https://pypi.python.org/pypi/%s/json" % (package_name,)
    data = json.load(urllib2.urlopen(urllib2.Request(url)))
    versions = data["releases"].keys()
    versions.sort(key=LooseVersion)
    return versions

print "\n".join(versions("ansible"))
