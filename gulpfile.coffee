# Load all required Libraries.
gulp = require 'gulp'
plumber = require 'gulp-plumber'
gutil = require 'gulp-util'
uglify = require 'gulp-uglify'
sass = require 'gulp-ruby-sass'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
livereload = require 'gulp-livereload'
lr = require 'tiny-lr'
browserSync = require 'browser-sync'
server = lr()


#declare src & dest
errorLog = (error) ->
  console.error.bind error
  @emit 'end'
#    .on 'error', errorLog

sassSources = 'src/sass/**/*.scss'
jsSources = ['bower_components/jquery/dist/jquery.js', 'src/js/**/*.js']
coffeeSources = 'src/coffee/**/*.coffee'

pathsOut =
  js: 'build/js'
  css: 'build/css'


gulp.task 'js', ->
  gulp.src jsSources
    .pipe plumber()
    .pipe uglify()
    .pipe concat('main.js')
    .pipe gulp.dest(pathsOut.js)


gulp.task 'coffee', ->
  gulp.src coffeeSources
    .pipe plumber()
    .pipe coffee({ bare: true })
      .on 'error', errorLog
    .pipe gulp.dest('src/js/')


gulp.task 'sass', ->
  gulp.src sassSources
    .pipe plumber()
    .pipe sass({style: 'expanded', lineNumbers: true})
    .pipe concat 'style.css'
    .pipe gulp.dest(pathsOut.css)
    .pipe livereload()

#Static server
gulp.task 'browser-sync', ->
  browserSync
    server:
      baseDir: "./build"


#config = port: 8088
#browserSync config


gulp.task 'watch', ->
  server = livereload()
  gulp.watch jsSources, ['js']
  gulp.watch coffeeSources, ['coffee']
  gulp.watch sassSources, ['sass']
  gulp.watch ['js/main.js', 'build/*.html'], (e) ->
    server.changed e.paths

gulp.task 'default', ['sass', 'js', 'coffee', 'watch', 'browser-sync']
