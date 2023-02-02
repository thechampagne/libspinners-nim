type
  spinner_t* {.bycopy.} = object
    spinner: pointer
  spinner_spinners_t* = enum
    Dots
    Dots2
    Dots3
    Dots4
    Dots5
    Dots6
    Dots7
    Dots8
    Dots9
    Dots10
    Dots11
    Dots12
    Dots8Bit
    Line
    Line2
    Pipe
    SimpleDots
    SimpleDotsScrolling
    Star
    Star2
    Flip
    Hamburger
    GrowVertical
    GrowHorizontal
    Balloon
    Balloon2
    Noise
    Bounce
    BoxBounce
    BoxBounce2
    Triangle
    Arc
    Circle
    SquareCorners
    CircleQuarters
    CircleHalves
    Squish
    Toggle
    Toggle2
    Toggle3
    Toggle4
    Toggle5
    Toggle6
    Toggle7
    Toggle8
    Toggle9
    Toggle10
    Toggle11
    Toggle12
    Toggle13
    Arrow
    Arrow2
    Arrow3
    BouncingBar
    BouncingBall
    Smiley
    Monkey
    Hearts
    Clock
    Earth
    Material
    Moon
    Runner
    Pong
    Shark
    Dqpb
    Weather
    Christmas
    Grenade
    Point
    Layer
    BetaWave
    FingerDance
    FistBump
    SoccerHeader
    Mindblown
    Speaker
    OrangePulse
    BluePulse
    OrangeBluePulse
    TimeTravel
    Aesthetic

proc spinner_new*(spinner: spinner_spinners_t, message: cstring): spinner_t {.importc.}

proc spinner_new_with_timer*(spinner: spinner_spinners_t, message: cstring): spinner_t {.importc.}

proc spinner_stop*(spinner: ptr spinner_t) {.importc.}

proc spinner_stop_with_symbol*(spinner: ptr spinner_t, symbol: cstring) {.importc.}

proc spinner_stop_with_newline*(spinner: ptr spinner_t) {.importc.}

proc spinner_stop_with_message*(spinner: ptr spinner_t, msg: cstring) {.importc.}

proc spinner_stop_and_persist*(spinner: ptr spinner_t, symbol: cstring, msg: cstring) {.importc.}

proc spinner_clean*(spinner: ptr spinner_t) {.importc.}
