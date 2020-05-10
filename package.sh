#!/bin/sh

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
VERSION=0.0.1

cd ${SCRIPTDIR}/django-utils/
python3 setup.py sdist bdist_wheel
cp ${SCRIPTDIR}/django-utils/dist/apoweroftrance-django-utils-${VERSION}.tar.gz ${SCRIPTDIR}/radio/
cp ${SCRIPTDIR}/django-utils/dist/apoweroftrance-django-utils-${VERSION}.tar.gz ${SCRIPTDIR}/account/
cp ${SCRIPTDIR}/django-utils/dist/apoweroftrance-django-utils-${VERSION}.tar.gz ${SCRIPTDIR}/upload/
#python3 -m pip install ${SCRIPTDIR}/radio/apoweroftrance-django-utils-${VERSION}.tar.gz
#python3 -m pip install ${SCRIPTDIR}/account/apoweroftrance-django-utils-${VERSION}.tar.gz
#python3 -m pip install ${SCRIPTDIR}/upload/apoweroftrance-django-utils-${VERSION}.tar.gz
