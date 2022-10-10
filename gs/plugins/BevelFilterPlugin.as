package gs.plugins
{
    import flash.filters.*;
    import gs.*;

    public class BevelFilterPlugin extends FilterPlugin
    {
        public static const VERSION:Number = 1;
        public static const API:Number = 1;

        public function BevelFilterPlugin()
        {
            this.propName = "bevelFilter";
            this.overwriteProps = ["bevelFilter"];
            return;
        }// end function

        override public function onInitTween(param1:Object, param2, param3:TweenLite) : Boolean
        {
            _target = param1;
            _type = BevelFilter;
            initFilter(param2, new BevelFilter(0, 0, 16777215, 0.5, 0, 0.5, 2, 2, 0, param2.quality || 2));
            return true;
        }// end function

    }
}
