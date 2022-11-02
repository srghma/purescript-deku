module Deku.DOM.Elt.Select where

import Bolson.Core (Entity(..), fixed)
import Control.Plus (empty)
import Data.Array (mapWithIndex)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable(..), Domable', unsafeSetPos)
import FRP.Event (Event)
import Safe.Coerce (coerce)

data Select_

select
  :: forall lock payload
   . Event (Attribute Select_)
  -> Array (Domable lock payload)
  -> Domable lock payload
select attributes kids = Domable
  ( Element'
      ( elementify "select" attributes
          ( (coerce :: Domable' lock payload -> Domable lock payload)
              (fixed (coerce (mapWithIndex unsafeSetPos kids)))
          )
      )
  )

select_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
select_ = select empty

