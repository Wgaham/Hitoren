@loadcell
@loop
;
@macro name=copyone
@copy dx=0 dy=0 sx=%x sy=0 sw=25 sh=19
@wait time=75
@endmacro
;
*start
@copyone x=0
@copyone x=25
@copyone x=50
@copyone x=75
@copyone x=100
@copyone x=125
@copyone x=150
@copyone x=175
@copyone x=200
@copyone x=225

@copyone x=250

@copyone x=225
@copyone x=200
@copyone x=175
@copyone x=150
@copyone x=125
@copyone x=100
@copyone x=75
@copyone x=50
@copyone x=25
@jump target=*start
