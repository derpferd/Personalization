To import the package:

 In Unity, in the Assets tab select import package -> custom package and find the package file downloaded and import it.

 Once the package has been added to Unity, in the Prefab folder add the Master Prefab to any scene to get the base skeleton 
 of the walking in place system.  From there, the FPC-MovingVIMS is the actual entity that will move around the scene. 
 
 The prefab has it stard on a simple cube, but simply move it anywhere in the scene and you should be able to move around with
 it.


To create the package if you want to save changes:

 First, find the MasterPrefab in the Project explorer in Unity (should be in the Prefab folder).  

 Right click it and then hit select dependencies.  It should select a bunch of stuff.  You will
 then need to manually add a couple of scripts and a couple of dlls.  

 First, navigate to the Plugins folder (use the left sad folder navigation to avoid deselecting
 anything) and ctrl + left click on each of the KinectForUnity.dll 's in the 3 folders (metro, x86, x86_64).

 Second, in the Standard Assets -> Windows -> Kinect folder, their are two files called KinectWrapper, ctrl + left
 click each of these as well.

 Once you have all these files selected, right click any selected file in the project explorer and select export package.
 A new window should open up.  From their, uncheck select dependencies and then create the package.  