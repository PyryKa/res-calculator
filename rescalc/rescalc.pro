QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        aqcuisition.cpp \
        detection.cpp \
        main.cpp \
        resistor.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    aqcuisition.h \
    detection.h \
    resistor.h

INCLUDEPATH += "$$(OPENCV_450_DIR)/include"
LIBS += -L"$$(OPENCV_450_DIR)/x64/vc16/lib"

CONFIG(debug, debug | release) {
        LIBS += \
                                -lopencv_objdetect450d \
                                -lopencv_calib3d450d \
                                -lopencv_features2d450d \
                                -lopencv_highgui450d \
                                -lopencv_imgcodecs450d \
                                -lopencv_imgproc450d \
                                -lopencv_flann450d \
                                -lopencv_core450d \
                                -lopencv_tracking450d \
                                -lopencv_video450d \
                                -lopencv_ximgproc450d \
                                -lopencv_xobjdetect450d \
                                -lopencv_xfeatures2d450d \
                                -lopencv_stitching450d
}
CONFIG(release, debug | release) {
        LIBS += \
                                -lopencv_features2d450 \
                                -lopencv_flann450 \
                                -lopencv_highgui450 \
                                -lopencv_imgcodecs450 \
                                -lopencv_imgproc450 \
                                -lopencv_objdetect450 \
                                -lopencv_calib3d450 \
                                -lopencv_core450 \
                                -lopencv_tracking450 \
                                -lopencv_video450 \
                                -lopencv_ximgproc450 \
                                -lopencv_xobjdetect450 \
                                -lopencv_xfeatures2d450 \
                                -lopencv_stitching450
}

INCLUDEPATH += "C:/Program Files/Basler/pylon 6/Development/include"
LIBS += -L"C:/Program Files/Basler/pylon 6/Development/lib/x64"

LIBS += \
    -lGCBase_MD_VC141_v3_1_Basler_pylon \
    -lGenApi_MD_VC141_v3_1_Basler_pylon \
    -lPylonBase_v6_1 \
    -lPylonC \
    -lPylonGUI_v6_1 \
    -lPylonUtility_v6_1
