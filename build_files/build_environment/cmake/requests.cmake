# ***** BEGIN GPL LICENSE BLOCK *****
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# ***** END GPL LICENSE BLOCK *****

ExternalProject_Add(external_requests
	DOWNLOAD_COMMAND ""
	CONFIGURE_COMMAND ""
	BUILD_COMMAND ""
	PREFIX ${BUILD_DIR}/requests
	INSTALL_COMMAND ${PYTHON_BINARY} -m pip install idna==${IDNA_VERSION} chardet==${CHARDET_VERSION} urllib3==${URLLIB3_VERSION} certifi==${CERTIFI_VERSION} requests==${REQUESTS_VERSION} --no-binary :all:
)

add_dependencies(external_requests Make_Python_Environment)
