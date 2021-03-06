{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- | Lists all modules in the tests directory.  A hack to make it
-- easy to compile all test modules.  By importing this file in the
-- main immutability.hs, all modules get compiled.
module AllModules where

import Conditions
import Parse
import Parse.Tokenizer
import Parse.Tokens
import Types
import Runner
import Directives
import TestLog
import Util
import Operand
import Result
import Arity
import TestHelpers
import Specials
import NumTests
