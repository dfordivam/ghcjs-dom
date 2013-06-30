{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLPreElement
       (ghcjs_dom_html_pre_element_set_width, htmlPreElementSetWidth,
        ghcjs_dom_html_pre_element_get_width, htmlPreElementGetWidth,
        ghcjs_dom_html_pre_element_set_wrap, htmlPreElementSetWrap,
        ghcjs_dom_html_pre_element_get_wrap, htmlPreElementGetWrap)
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
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_pre_element_set_width ::
        JSRef HTMLPreElement -> Int -> IO ()
#else 
ghcjs_dom_html_pre_element_set_width ::
                                       JSRef HTMLPreElement -> Int -> IO ()
ghcjs_dom_html_pre_element_set_width = undefined
#endif
 
htmlPreElementSetWidth ::
                       (IsHTMLPreElement self) => self -> Int -> IO ()
htmlPreElementSetWidth self val
  = ghcjs_dom_html_pre_element_set_width
      (unHTMLPreElement (toHTMLPreElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_pre_element_get_width ::
        JSRef HTMLPreElement -> IO Int
#else 
ghcjs_dom_html_pre_element_get_width ::
                                       JSRef HTMLPreElement -> IO Int
ghcjs_dom_html_pre_element_get_width = undefined
#endif
 
htmlPreElementGetWidth :: (IsHTMLPreElement self) => self -> IO Int
htmlPreElementGetWidth self
  = ghcjs_dom_html_pre_element_get_width
      (unHTMLPreElement (toHTMLPreElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"wrap\"] = $2;"
        ghcjs_dom_html_pre_element_set_wrap ::
        JSRef HTMLPreElement -> JSBool -> IO ()
#else 
ghcjs_dom_html_pre_element_set_wrap ::
                                      JSRef HTMLPreElement -> JSBool -> IO ()
ghcjs_dom_html_pre_element_set_wrap = undefined
#endif
 
htmlPreElementSetWrap ::
                      (IsHTMLPreElement self) => self -> Bool -> IO ()
htmlPreElementSetWrap self val
  = ghcjs_dom_html_pre_element_set_wrap
      (unHTMLPreElement (toHTMLPreElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"wrap\"] ? 1 : 0)"
        ghcjs_dom_html_pre_element_get_wrap ::
        JSRef HTMLPreElement -> IO JSBool
#else 
ghcjs_dom_html_pre_element_get_wrap ::
                                      JSRef HTMLPreElement -> IO JSBool
ghcjs_dom_html_pre_element_get_wrap = undefined
#endif
 
htmlPreElementGetWrap :: (IsHTMLPreElement self) => self -> IO Bool
htmlPreElementGetWrap self
  = fromJSBool <$>
      (ghcjs_dom_html_pre_element_get_wrap
         (unHTMLPreElement (toHTMLPreElement self)))