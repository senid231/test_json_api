#!/usr/bin/env bash

curl -i -H 'Accept: application/vnd.api+json' -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"contacts", "name-first":"fname", "name-last":"lname", "email":"qwe.asd@boring.test", "links": {"phone_number": {"linkage":{"name":"fname", "phone_number":"111"}}}}}' http://localhost:3000/contacts