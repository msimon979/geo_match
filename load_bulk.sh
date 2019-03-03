#!/bin/sh

psql geo < sql/success.sql
psql geo < sql/fail.sql
