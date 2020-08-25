#!/usr/bin/env ruby

require "json"
require "octokit"


p "GITHUB_REF=#{ENV.fetch("GITHUB_REF")}"
p "GITHUB_SERVER_URL=#{ENV.fetch("GITHUB_SERVER_URL")}"


event_json = File.read(ENV.fetch("GITHUB_EVENT_PATH"))
event = JSON.parse(event_json)

github = Octokit::Client.new(access_token: ENV.fetch["GITHUB_TOKEN"])
