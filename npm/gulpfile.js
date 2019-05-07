const gulp = require("gulp");
const $ = require("gulp-load-plugins")();
const sass = require('gulp-sass');
const rename = require('gulp-rename');
const cleanCSS = require('gulp-clean-css');
const es = require('event-stream');
var watch = require('gulp-watch');

const srcPattern = [
    'default',
    'admin'
];
// Watch for dev
gulp.task('watch', function () {
    let events = srcPattern.map((target) => {
        return watch(`./html/template/${target}/assets/scss/**/*.scss`, function () {
            gulp.src(`./html/template/${target}/assets/scss/**/*.scss`)
            .pipe($.plumber({
                errorHandler: $.notify.onError('<%= error.message %>')
            }))
            .pipe($.sourcemaps.init())
            .pipe(sass({
                sourceMap: true
            }))
            .pipe($.pleeease({
                autoprefixer: true,
                minifier: false,
                mqpacker: true
            }))
            .pipe($.sourcemaps.write('./maps'))
            .pipe(gulp.dest(`./html/template/${target}/assets/css/`))
        })
    });
    return es.concat(events);
});

// CSS出力
gulp.task('sass', function() {
    let events = srcPattern.map((target) => {
        return gulp.src(`./html/template/${target}/assets/scss/**/*.scss`)
            .pipe($.plumber({
                errorHandler: $.notify.onError('<%= error.message %>')
            }))
            .pipe($.sourcemaps.init())
            .pipe(sass({
                sourceMap: true
            }))
            .pipe($.pleeease({
                autoprefixer: true,
                minifier: false,
                mqpacker: true
            }))
            .pipe($.sourcemaps.write('./maps'))
            .pipe(gulp.dest(`./html/template/${target}/assets/css/`))
    });
    return es.concat(events);
});

// CSS圧縮(cssディレクトリ直下のファイルだけ対象とする)
gulp.task('minify-css', function() {
    let events = srcPattern.map((target) => {
        return gulp.src([`./html/template/${target}/assets/css/*.css`, `!./html/template/${target}/assets/css/**/*.min.css`])
            .pipe($.plumber({
                errorHandler: $.notify.onError('<%= error.message %>')
            }))
            .pipe($.sourcemaps.init())
            .pipe(sass({
                sourceMap: true
            }))
            .pipe(cleanCSS())
            .pipe(rename({
                extname: '.min.css'
            }))
            .pipe($.sourcemaps.write('./maps'))
            .pipe(gulp.dest(`./html/template/${target}/assets/css/`))
    });
    return es.concat(events);
});

gulp.task("default", ["sass", "minify-css"]);

