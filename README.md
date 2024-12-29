# iBus System
A basic replica of the real-life iBus System used by Transport for London, but written in lua for Roblox.

## Installation

1. Insert the `iBusModule` script into $\color{blue}{\textsf{ServerScriptService}}$

2. Insert the `iBus` into your vehicle's body and reposition all the devices according to your preference.

3. Use the ObjectValues inside the `iBus` model to link your already existing `BusStopping`, `FrontDoor` and `RearDoor` values. [Learn more about this from the Roblox Documentation](https://create.roblox.com/docs/reference/engine/classes/ObjectValue)


## Garage Setup

Go into **iBus > iBusMDT > Config**. The `Config` script has a section at the top which you will modify in order to register your routes.

Modify the `garage` variable by inserting your own garage name.

**Example:**
```lua
local garage = "Lea Interchange"
```

## Route Setup

Modify the `routes` table by inserting your desired routes.

**Example:**

```lua
{
  route = "",
  destinationIn = "",
  destinationInSoundId = 0,
  destinationOut = "",
  destinationOutSoundId = 0,
  stopsIn = {
    {
      "",  -- Station Name
      0, -- Sound Id
      Vector3.new(0,0,0), -- Place co-ordinates within brackets
      0, -- Sound delay (after text updates)
      0, -- Radius of co-ordinates (decides how far out you want ibus to detect the 'hit' part, but realistically you're just placing coords)
    },
  },
  stopsOut = {
    {
      "",  -- Station Name
      0, -- Sound Id
      Vector3.new(0,0,0), -- Place co-ordinates within brackets
      0, -- Sound delay (after text updates)
      0, -- Radius of co-ordinates (decides how far out you want ibus to detect the 'hit' part, but realistically you're just placing coords)
    },
  },
  curtailments = {
    inbound = {
      {
        curtailmentName = "", -- Curtailment Name, don't include the route number or anything, just the destination
        soundId = 0,
        numberOfStopsServing = 0, -- Count how many stops the curtailment serves, the last stop included
      },
    },
    
    outbound = {
      {
        curtailmentName = "",
        soundId = 0,
        numberOfStopsServing = 0,
      },
    },
  },
},
```

### Inputting route details

Insert the route into the `route` variable, inbound destination into `destinationIn` and outbound destination to `destinationOut`. `destinationInSoundId` is where you insert the sound Id for that specific destination; also vice versa for `destinationOutSoundId`. 

**Example:**

```lua
{
  route = "12",
  destinationIn = "Oxford Circus",
  destinationInSoundId = 12345678,
  destinationOut = "Dulwich Library",
  destinationOutSoundId = 12345678,
  stopsIn = {},
  stopsOut = {},
  curtailments = {},
},
```

### Inputting route stop information

These modifications should be made within the `stopsIn`/`stopsOut` **respectively**.

The **first** index of the table should include the **Station Name**.

The **second** index of the table should include the **Sound Id** for the announcement that's to be played.

The **third** index of the table should include the **co-ordinates** for where the Next Stop Announcement is triggered.
> You can do this by placing your studio camera at the desired position, then copying its position from the Camera properties in the explorer. You should place these co-ordinates <ins>inside</ins> `Vector3.new()` (inside the brackets) 

The **fourth** index of the table should include the **Sound Delay (after the text updates)**. This makes the iBus wait a given amount of seconds to play the audio announcement after the trigger.

The **fifth** & final index should include the **radius** of the announcement trigger (this is measured in studs). This will determine how far out the trigger zone is for the Next Stop Announcement.

The example below shows all the indexes commented to help guide you through the process. 

**Example:**

```lua
{
  "Oxford Circus Station",  -- Station Name
  12345678, -- Sound Id
  Vector3.new(13,21,3), -- Place co-ordinates within brackets
  3, -- Sound delay (after text updates)
  100, -- Radius of trigger zone (measured in studs)
},
```

> You must ensure that you place the stops in the correct order, from start to end, as the script will follow this order during the route.

### Inputting curtailment information

The **first** index should include the **name of the curtailment destination** (excluding the route number) that will show on the MDT and PAX Display.

The **second** index should include the **Sound ID** of the destination. The procedure for this is the same as during normal route information setup.

The **third** index should include the **number of stops being served** by the curtailment, counting from the first stop leading up to the last stop where your curtailment is.

**Example:**
```lua
{
  curtailmentName = "", -- Curtailment Name, don't include the route number or anything, just the destination
  soundId = 0,
  numberOfStopsServing = 0, -- Count how many stops the curtailment serves, the last stop included
},
```


## Announcement Setup

Inside the local `manualAnnouncements` table, you will find a bunch of preset announcements that have been completed for you (as these are the standard announcements included in the original iBus System). However, for easy configuration purposes, The option for you to add additional announcements has been applied to this list.

For the **first** index of the table, whatever you input as a string will show up on the driver's display (so you should probably keep it relatively short as seen with the rest of the announcements).

The **second** index of the table should include the **Sound ID** of the announcement audio that will play.

The **third** index of the table should include the **full announcement text** that will be displayed on the passenger displays.

> Please be aware that the standard dot matrix display has format to allow long announcements to display, but the newer style screens do not. This is because I designed the screens according to how they work in real life.

**Example:**
```lua
{"Bus terminates here", 123456789, "This bus terminates here. Please take all your belongings with you."},
```

Your configuration has now been completed.

## Quickstart In-game

# Login

In the login page, you’ll be greeted with 4 input options; the **garage**, **route**, **operator number** and  **trip number**.

> You must fill all entries in order to proceed. You can input anything for the **garage**, **operator number** and **trip number** but you must enter a valid route to proceed. Click **enter** to proceed.

## Route Type

This is where you choose either with, or without timetable. Unfortunately, at this moment, only Route Variant is available. “With Timetable” will be added in a future update.

## Choose Direction

Here, you’ll be able to choose whether you are driving inbound or outbound. Curtailments are <ins>not</ins> controlled here.

After choosing your option, you’ll be sent to the home screen, where the iBus will then also play the destination announcement, display it, and also list all the stops upcoming from your current terminus.

## Home

The home screen shows a list of stops , as well as a variety of options along the bottom:

Login

Route Type

Choose Direction

Driver Announcements

Volume Adjustments

## Driver Announcements

The arrows allow you to scroll through the pages for different announcements, and the home button lets you return to the  home page. When you select an announcement, you’ll automatically be redirected to the home page either way.

## Currently Unavailable Features

- Voice API controlled CentreComm
- Timetable
- Volume Adjustment
