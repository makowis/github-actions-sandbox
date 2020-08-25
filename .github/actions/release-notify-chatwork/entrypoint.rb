#!/usr/bin/env ruby

require "json"
require "octokit"

event_json = File.read(ENV.fetch("GITHUB_EVENT_PATH"))
event = JSON.parse(event_json)

github = Octokit::Client.new(access_token: ENV.fetch["GITHUB_TOKEN"])

p ENV.fetch("GITHUB_REF")