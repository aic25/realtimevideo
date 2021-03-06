all:
	nvcc \
		main.cpp realtime.cpp respi.cpp \
		-std=c++11 \
		-lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu \
		-lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_nonfree -lopencv_objdetect -lopencv_ocl \
	 	-lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videostab \
	 	-lpthread
lin:
	nvcc main.cpp -g -std=c++11 -lopencv_core -lopencv_highgui -lopencv_videoio -lopencv_imgproc -lpthread
