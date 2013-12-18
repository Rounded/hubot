# Hubot

This is the Rounded Hipchat Bot. It adds incredibly useful utilities to the Hipchat room.


## Installing

### Locally

#### 1 - Get Node/NPM (version 10.2+)

On OSX: use [`brew`](http://brew.sh/).

    $ brew install node

On Linux/Windows: use one of the precompiled versions or .exe from here: http://nodejs.org/dist/v0.10.2/

#### 2 - Run `npm install`

In the hubot dir run:
    
    npm install

#### 3 - Set Envi Variables (optional)
If you want your bot to connect to the Hipchat rooms, you must set the following environment variables (found when logged into hipchat.com). The following is the unix commands for setting up the env vars:

    $ export HUBOT_HIPCHAT_JID=<YOUR HIPCHAT JID>
    $ export HUBOT_HIPCHAT_PASSWORD=<YOUR HIPCHAT PASSWORD>
    $ export HUBOT_HIPCHAT_ROOMS="<COMMA SEPARATED LIST OF HIPCHAT ROOM IDS>"

This step is optional. You can still test your hubot scripts without setting these, your bot simply won't connect to any chat rooms.

#### 4 - Run `hubot`

If you want your bot to connect to our hipchat room, you must use the --adapter flag. You must also have the proper envi vars set from Step 3.

    $ bin/hubot --adapter hipchat --name <your bot name>
    
If you're just testing locally and don't need your bot connecting to any room, you don't need the --adapter flag.

    $ bin/hubot --name <your bot name>


### VirtualMachine (with Vagrant) / Setting up a machine w/ chef

The `hubot` chef recipe uses [encrypted data bags](http://docs.opscode.com/chef/essentials_data_bags.html#encrypt-a-data-bag) with a secret file to decrypt them. You need to obtain the file `encrypted_data_bag_secret` from someone who has it. Otherwise, you won't be able to spin up the virtualmachine. Put the `encrypted_data_bag_secret` file in the root of the hubot directory. Once you have it you can simply run the `vagrant up` command.

    $ vagrant up


## Creating Custom Scripts

Adding scripts to the hubot bot is easy. Simply write a `.coffee` script in `hubot/scripts` following the pattern from any of the current scripts. Hubot automatically registers all scripts in this directory. You can test it without having the bot connect to hipchat by running `bin/hubot` without the --adapter flag set:

    $ bin/hubot --name <your bot name>

