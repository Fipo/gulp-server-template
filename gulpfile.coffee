gulp      = require 'gulp'
webserver = require 'gulp-webserver'
watch     = require 'gulp-watch'      #https://www.npmjs.com/package/gulp-watch
coffee    = require 'gulp-coffee'     #https://www.npmjs.com/package/gulp-coffee
gutil     = require 'gulp-util'       #https://www.npmjs.com/package/gulp-util

gutil.log 'stuff happened', 'Really it did', gutil.colors.magenta('123')
gutil.beep()

gulp.task 'webserver', ->
  gulp.src('.')
    .pipe webserver {
      livereload: true,
      directoryListing: true,
      host: 'gulp.dev'
    }

gulp.task 'coffee', ->
  gulp.src 'scripts/**/*.coffee'
    .pipe coffee({bare: true})
      .on 'error', gutil.log
      .on 'error', gutil.beep
    .pipe gulp.dest('./scripts')

gulp.task 'watch', ->
  gulp.watch 'scripts/**/*.coffee', ['coffee']

gulp.task 'default', ['webserver', 'coffee', 'watch']
