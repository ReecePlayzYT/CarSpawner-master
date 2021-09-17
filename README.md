# CarSpawner-master
This is a script that allows you to spawn vehicles (Addon Or Not) through the chat box. I made this script so people don't have to go through the vMenu in order to spawn a vehicle. I showcased this on YT [Click Here](https://www.youtube.com/channel/UC8uPjAJFg2FsoB1KZo_SUUQ).

# Usage
To use, do `/car` or `/car CarName` (to change defualt car, change line 2 in`client.lua`)

For example:
```lua
  local vehicleName = args[1] or 'adder'
```
 ⬇️
```lua
  local vehicleName = args[1] or 'police2'
  ```


# Change command name
TO change the command name, change line 1

For example:
```lua
RegisterCommand('car', function(source, args )
```
 ⬇️
 ```lua
 RegisterCommand('spawn', function(source, args )
```

# Discord
[Fierce Modifications](https://discord.gg/gGHPkGkUH3)

[My Discord](https://discord.gg/ykh5Vu47RA)

# Credits
- [@ReecePlayzYT](https://github.com/ReecePlayzYT) for the script
- [@weirdbandkid](https://github.com/weirdbandkid) for the `README` update ([His Org](https://github.com/weirdbandkid-games))
