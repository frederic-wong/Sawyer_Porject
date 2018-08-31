# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sawyer_beer: 1 messages, 1 services")

set(MSG_I_FLAGS "-Isawyer_beer:/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iintera_core_msgs:/home/parallels/ros_ws/src/intera_common/intera_core_msgs/msg;-Iintera_core_msgs:/home/parallels/ros_ws/devel/share/intera_core_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sawyer_beer_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg" NAME_WE)
add_custom_target(_sawyer_beer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sawyer_beer" "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg" ""
)

get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv" NAME_WE)
add_custom_target(_sawyer_beer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sawyer_beer" "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sawyer_beer
)

### Generating Services
_generate_srv_cpp(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sawyer_beer
)

### Generating Module File
_generate_module_cpp(sawyer_beer
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sawyer_beer
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sawyer_beer_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sawyer_beer_generate_messages sawyer_beer_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_cpp _sawyer_beer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_cpp _sawyer_beer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sawyer_beer_gencpp)
add_dependencies(sawyer_beer_gencpp sawyer_beer_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sawyer_beer_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sawyer_beer
)

### Generating Services
_generate_srv_eus(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sawyer_beer
)

### Generating Module File
_generate_module_eus(sawyer_beer
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sawyer_beer
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sawyer_beer_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sawyer_beer_generate_messages sawyer_beer_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_eus _sawyer_beer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_eus _sawyer_beer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sawyer_beer_geneus)
add_dependencies(sawyer_beer_geneus sawyer_beer_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sawyer_beer_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sawyer_beer
)

### Generating Services
_generate_srv_lisp(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sawyer_beer
)

### Generating Module File
_generate_module_lisp(sawyer_beer
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sawyer_beer
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sawyer_beer_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sawyer_beer_generate_messages sawyer_beer_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_lisp _sawyer_beer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_lisp _sawyer_beer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sawyer_beer_genlisp)
add_dependencies(sawyer_beer_genlisp sawyer_beer_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sawyer_beer_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sawyer_beer
)

### Generating Services
_generate_srv_nodejs(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sawyer_beer
)

### Generating Module File
_generate_module_nodejs(sawyer_beer
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sawyer_beer
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sawyer_beer_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sawyer_beer_generate_messages sawyer_beer_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_nodejs _sawyer_beer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_nodejs _sawyer_beer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sawyer_beer_gennodejs)
add_dependencies(sawyer_beer_gennodejs sawyer_beer_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sawyer_beer_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sawyer_beer
)

### Generating Services
_generate_srv_py(sawyer_beer
  "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sawyer_beer
)

### Generating Module File
_generate_module_py(sawyer_beer
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sawyer_beer
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sawyer_beer_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sawyer_beer_generate_messages sawyer_beer_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg/Centroid.msg" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_py _sawyer_beer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/parallels/ros_ws/src/sawyer_beer-final_demo/srv/target.srv" NAME_WE)
add_dependencies(sawyer_beer_generate_messages_py _sawyer_beer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sawyer_beer_genpy)
add_dependencies(sawyer_beer_genpy sawyer_beer_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sawyer_beer_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sawyer_beer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sawyer_beer
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sawyer_beer_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET intera_core_msgs_generate_messages_cpp)
  add_dependencies(sawyer_beer_generate_messages_cpp intera_core_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sawyer_beer_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sawyer_beer_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sawyer_beer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sawyer_beer
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sawyer_beer_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET intera_core_msgs_generate_messages_eus)
  add_dependencies(sawyer_beer_generate_messages_eus intera_core_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sawyer_beer_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sawyer_beer_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sawyer_beer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sawyer_beer
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sawyer_beer_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET intera_core_msgs_generate_messages_lisp)
  add_dependencies(sawyer_beer_generate_messages_lisp intera_core_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sawyer_beer_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sawyer_beer_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sawyer_beer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sawyer_beer
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sawyer_beer_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET intera_core_msgs_generate_messages_nodejs)
  add_dependencies(sawyer_beer_generate_messages_nodejs intera_core_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sawyer_beer_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sawyer_beer_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sawyer_beer)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sawyer_beer\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sawyer_beer
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sawyer_beer_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET intera_core_msgs_generate_messages_py)
  add_dependencies(sawyer_beer_generate_messages_py intera_core_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sawyer_beer_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sawyer_beer_generate_messages_py std_msgs_generate_messages_py)
endif()
