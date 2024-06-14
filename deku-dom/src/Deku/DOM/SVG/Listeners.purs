-- | This module contains reexports of all the event listeners.
-- This module has been automatically generated by running `spago run -p codegen`.
-- Any changes may be overwritten.
module Deku.DOM.SVG.Listeners (module Combinators, repeat, repeat_, end, end_, begin, begin_) where

import Control.Applicative (pure, class Applicative) as Applicative
import Control.Category ((<<<))
import Data.Functor (map, class Functor) as Functor
import Deku.DOM.Combinators (unset, injectElement, injectElementT, runOn, runOn_, numberOn, numberOn_, checkedOn, checkedOn_, valueOn, valueOn_, selectOn, selectOn_) as Combinators
import Deku.Attribute as Deku.Attribute
import Web.Event.Internal.Types as Web.Event.Internal.Types
import Effect as Effect
import Data.Unit as Data.Unit
import Unsafe.Coerce as Unsafe.Coerce

repeat
  :: forall r f
   . Functor.Functor f
  => f (Web.Event.Internal.Types.Event -> Effect.Effect Data.Unit.Unit)
  -> f (Deku.Attribute.Attribute (repeat :: Web.Event.Internal.Types.Event | r))
repeat = Functor.map
  ( Deku.Attribute.unsafeAttribute <<< Deku.Attribute.cb' "repeat" <<< Deku.Attribute.cb <<<
      Unsafe.Coerce.unsafeCoerce
  )

repeat_
  :: forall r f
   . Applicative.Applicative f
  => (Web.Event.Internal.Types.Event -> Effect.Effect Data.Unit.Unit)
  -> f (Deku.Attribute.Attribute (repeat :: Web.Event.Internal.Types.Event | r))
repeat_ = repeat <<< Applicative.pure

end
  :: forall r f
   . Functor.Functor f
  => f (Web.Event.Internal.Types.Event -> Effect.Effect Data.Unit.Unit)
  -> f (Deku.Attribute.Attribute (end :: Web.Event.Internal.Types.Event | r))
end = Functor.map
  ( Deku.Attribute.unsafeAttribute <<< Deku.Attribute.cb' "end" <<< Deku.Attribute.cb <<<
      Unsafe.Coerce.unsafeCoerce
  )

end_
  :: forall r f
   . Applicative.Applicative f
  => (Web.Event.Internal.Types.Event -> Effect.Effect Data.Unit.Unit)
  -> f (Deku.Attribute.Attribute (end :: Web.Event.Internal.Types.Event | r))
end_ = end <<< Applicative.pure

begin
  :: forall r f
   . Functor.Functor f
  => f (Web.Event.Internal.Types.Event -> Effect.Effect Data.Unit.Unit)
  -> f (Deku.Attribute.Attribute (begin :: Web.Event.Internal.Types.Event | r))
begin = Functor.map
  ( Deku.Attribute.unsafeAttribute <<< Deku.Attribute.cb' "begin" <<< Deku.Attribute.cb <<<
      Unsafe.Coerce.unsafeCoerce
  )

begin_
  :: forall r f
   . Applicative.Applicative f
  => (Web.Event.Internal.Types.Event -> Effect.Effect Data.Unit.Unit)
  -> f (Deku.Attribute.Attribute (begin :: Web.Event.Internal.Types.Event | r))
begin_ = begin <<< Applicative.pure
