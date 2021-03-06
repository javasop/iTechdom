'use strict';

var gulp = require('gulp');
var gulpIgnore = require('gulp-ignore');

var paths = gulp.paths;

var $ = require('gulp-load-plugins')();
var condition = '**/*.spec.coffee'

gulp.task('scripts', function () {
  return gulp.src(paths.src + '/{app,components}/**/*.coffee')
    .pipe(gulpIgnore.exclude(condition))
    .pipe($.coffeelint())
    .pipe($.coffeelint.reporter())
    .pipe($.coffee())
    .on('error', function handleError(err) {
      console.error(err.toString());
      this.emit('end');
    })
    .pipe(gulp.dest(paths.tmp + '/serve/'))
    .pipe($.size())
});
