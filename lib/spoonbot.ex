defmodule Spoonbot do
  use Application.Behaviour

  def start(_type, _args) do
    bot_hello = BotSpeak.new(pattern: %r/sayeth/, doer: fn -> "hi" end)
    vocab = [bot_hello]
    Bridge.IRC.run(vocab)
    Spoonbot.Supervisor.start_link
  end
end

defrecord BotSpeak, pattern: nil, doer: nil

defrecord RobotResponse, msg: nil

defprotocol Robot do
  def speak(robot_response)
end
