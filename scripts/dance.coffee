# Description:
#   Dance gets the chat room bumpin
#
# Commands:
#   hubot dance - show a gif of someone dancing

dance_gifs = [
    "https://s3.amazonaws.com/uploads.hipchat.com/71869/548580/zGE0hGR6qnJPRKq/5g13c.gif",
    "https://s3.amazonaws.com/uploads.hipchat.com/71869/548580/pngDSmNL32fn4Rr/5gwhd.gif"
]

module.exports = (robot) ->

  robot.respond /dance/i, (msg) ->
      msg.send dance_gifs[Math.floor(Math.random() * dance_gifs.length)]

