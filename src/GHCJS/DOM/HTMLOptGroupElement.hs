{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLOptGroupElement
       (ghcjs_dom_html_opt_group_element_set_disabled,
        htmlOptGroupElementSetDisabled,
        ghcjs_dom_html_opt_group_element_get_disabled,
        htmlOptGroupElementGetDisabled,
        ghcjs_dom_html_opt_group_element_set_label,
        htmlOptGroupElementSetLabel,
        ghcjs_dom_html_opt_group_element_get_label,
        htmlOptGroupElementGetLabel)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_opt_group_element_set_disabled ::
        JSRef HTMLOptGroupElement -> JSBool -> IO ()
#else 
ghcjs_dom_html_opt_group_element_set_disabled ::
                                                JSRef HTMLOptGroupElement -> JSBool -> IO ()
ghcjs_dom_html_opt_group_element_set_disabled = undefined
#endif
 
htmlOptGroupElementSetDisabled ::
                               (IsHTMLOptGroupElement self) => self -> Bool -> IO ()
htmlOptGroupElementSetDisabled self val
  = ghcjs_dom_html_opt_group_element_set_disabled
      (unHTMLOptGroupElement (toHTMLOptGroupElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_opt_group_element_get_disabled ::
        JSRef HTMLOptGroupElement -> IO JSBool
#else 
ghcjs_dom_html_opt_group_element_get_disabled ::
                                                JSRef HTMLOptGroupElement -> IO JSBool
ghcjs_dom_html_opt_group_element_get_disabled = undefined
#endif
 
htmlOptGroupElementGetDisabled ::
                               (IsHTMLOptGroupElement self) => self -> IO Bool
htmlOptGroupElementGetDisabled self
  = fromJSBool <$>
      (ghcjs_dom_html_opt_group_element_get_disabled
         (unHTMLOptGroupElement (toHTMLOptGroupElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"label\"] = $2;"
        ghcjs_dom_html_opt_group_element_set_label ::
        JSRef HTMLOptGroupElement -> JSString -> IO ()
#else 
ghcjs_dom_html_opt_group_element_set_label ::
                                             JSRef HTMLOptGroupElement -> JSString -> IO ()
ghcjs_dom_html_opt_group_element_set_label = undefined
#endif
 
htmlOptGroupElementSetLabel ::
                            (IsHTMLOptGroupElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlOptGroupElementSetLabel self val
  = ghcjs_dom_html_opt_group_element_set_label
      (unHTMLOptGroupElement (toHTMLOptGroupElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_html_opt_group_element_get_label ::
        JSRef HTMLOptGroupElement -> IO JSString
#else 
ghcjs_dom_html_opt_group_element_get_label ::
                                             JSRef HTMLOptGroupElement -> IO JSString
ghcjs_dom_html_opt_group_element_get_label = undefined
#endif
 
htmlOptGroupElementGetLabel ::
                            (IsHTMLOptGroupElement self, FromJSString result) =>
                              self -> IO result
htmlOptGroupElementGetLabel self
  = fromJSString <$>
      (ghcjs_dom_html_opt_group_element_get_label
         (unHTMLOptGroupElement (toHTMLOptGroupElement self)))