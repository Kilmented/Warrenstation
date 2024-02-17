//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "map_files\Birdshot\birdshot.dmm"
		#include "map_files\debug\multiz.dmm"
		#include "map_files\debug\runtimestation.dmm"
		#include "map_files\BoxStation\BoxStation.dmm"
		#include "map_files\MetaStation\MetaStation.dmm"
		#include "map_files\Mining\Lavaland.dmm"

		#ifdef CIBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
