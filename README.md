To import the package:
----------------------

 In Unity, in the Assets tab select import package -> custom package and find the package file downloaded and import it.

 Once the package has been added to Unity, in the Prefab folder add the Master Prefab to any scene to get the base skeleton 
 of the walking in place system.  From there, the FPC-MovingVIMS is the actual entity that will move around the scene. 
 
 The prefab has it start on a simple cube, but simply move it anywhere in the scene and you should be able to move around with
 it.

 There are some input settings that you should set once you bring the package into the scene (Edit->Project Settings->Input).
 
 ChangePosition : hitting this will move the Virtual walker to various positions you can set up in Location Switch script 
    on the FPC-MovingVIMS (FPC-MovingVIMS is the thing that will move around the game world). You can use the Locations 
    gameobject's children I've set up as the various locations to teleport too.  Open up the locations array on the
    Location Switch script to get an idea of how it works.
    
    ChangePosition: Example for Input:  Positive Button 'l', gravity 1000, dead 0.001, sensitivity 1000, Type "Key or Mouse Button"
 
 RotateLeftandRight: rotates the FPC-MovingVIMS using keyboard or other inpu.  Not used in walking in place code, simply
    for rotating and helping move the construct around the scene.
    
    RotateLeftandRight: Example for Input:  Negative Button 'q', Positive Button 'e', gravity 3, dead 0.001, sensitivity 3, Type "Key or Mouse Button"
 
 ToggleWalking:  Positive turns on walking in place, setting the users start position to their current position.  
    Negative turns off walking in place, also sets it up to reset the users start position once the positive button
    is pressed again.
    
    ToggleWalking: Examples for Input:  Negative Button 'h', Positive Button 'g', gravity 1000, dead 0.001, sensitivity 1000, Type "Key or Mouse Button"


In order for the Kinect stuff to work, the Kinect v2.0 sdk needs to be installed on the computer.  This version was created
    with KinectSDK-v2.0_1409-Setup retrieved from https://www.microsoft.com/en-us/download/details.aspx?id=44561 .  It is likely 
    that future versions of the kinect will still work as long as there is not radical changes.


To create the package if you want to save changes:
--------------------------------------------------

 First, find the MasterPrefab in the Project explorer in Unity (should be in the Prefab folder).  

 Right click it and then hit select dependencies.  It should select a bunch of stuff.  You will
 then need to manually add a couple of scripts and a couple of dlls.  

 First, navigate to the Plugins folder (use the left sad folder navigation to avoid deselecting
 anything) and ctrl + left click on each of the KinectForUnity.dll 's in the 3 folders (metro, x86, x86_64).

 Second, in the Standard Assets -> Windows -> Kinect folder, their are two files called KinectWrapper, ctrl + left
 click each of these as well.

 Once you have all these files selected, right click any selected file in the project explorer and select export package.
 A new window should open up.  From their, uncheck select dependencies and then create the package.  