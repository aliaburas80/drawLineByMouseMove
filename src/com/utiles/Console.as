package com.utiles {

    public class Console {
        private var className:String;

        public function Console(category:String) {
            var arr:Array = category.split(".");
            className = arr[arr.length - 1];
        }

        public function debug(message:String, ... rest):void {
            trace("L [" + className + "] " + message);
        }

        public function log(message:String, ... rest):void {
            trace("I [" + className + "] " + message);
        }

        public function info(message:String, ... rest):void {
            trace("I [" + className + "] " + message);
        }

        public function warn(message:String, ... rest):void {
            trace("W [" + className + "] " + message);
        }

        public function error(message:String, ... rest):void {
            trace("E [" + className + "] " + message);
        }

        public function fatal(message:String, ... rest):void {
            trace("F [" + className + "] " + message);
        }
    }

}
