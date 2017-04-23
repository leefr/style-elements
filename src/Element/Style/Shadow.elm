module Element.Style.Shadow exposing (box, drop, inset, text)

{-|

@docs box, drop, inset, text

-}

import Color exposing (Color)
import Element.Style.Internal.Model as Internal
import Element.Style exposing (Shadow)


{-| -}
box :
    { offset : ( Float, Float )
    , size : Float
    , blur : Float
    , color : Color
    }
    -> Shadow
box { offset, size, blur, color } =
    Internal.ShadowModel
        { kind = "box"
        , offset = offset
        , size = size
        , blur = blur
        , color = color
        }


{-| -}
inset :
    { offset : ( Float, Float )
    , size : Float
    , blur : Float
    , color : Color
    }
    -> Shadow
inset { offset, blur, color, size } =
    Internal.ShadowModel
        { kind = "inset"
        , offset = offset
        , size = size
        , blur = blur
        , color = color
        }


{-| -}
text :
    { offset : ( Float, Float )
    , blur : Float
    , color : Color
    }
    -> Shadow
text { offset, blur, color } =
    Internal.ShadowModel
        { kind = "text"
        , offset = offset
        , size = 0
        , blur = blur
        , color = color
        }


{-|
-}
drop :
    { offset : ( Float, Float )
    , blur : Float
    , color : Color
    }
    -> Shadow
drop { offset, blur, color } =
    Internal.ShadowModel
        { kind = "drop"
        , offset = offset
        , size = 0
        , blur = blur
        , color = color
        }