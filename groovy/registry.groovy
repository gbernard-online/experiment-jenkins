#!/usr/bin/env groovy

import groovy.json.JsonSlurper

def jsonSlurper = new JsonSlurper()

def result = 'curl --user ghislain.bernard:rnKhmcajDmSah9BD https://registry.virtware.top/v2/alpine-gcc/tags/list'
    .execute().text

print result

return jsonSlurper.parseText(result).tags.sort().reverse()
