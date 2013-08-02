/****
* 
****/

package flash.display3D.textures;

#if (flash || display)
@:final extern class CubeTexture extends TextureBase {
	function uploadCompressedTextureFromByteArray(data : flash.utils.ByteArray, byteArrayOffset : UInt, async : Bool = false) : Void;
	function uploadFromBitmapData(source : flash.display.BitmapData, side : UInt, miplevel : UInt = 0) : Void;
	function uploadFromByteArray(data : flash.utils.ByteArray, byteArrayOffset : UInt, side : UInt, miplevel : UInt = 0) : Void;
}
#else
using flash.display.BitmapData;
import flash.utils.ByteArray;
import openfl.gl.GL;
import openfl.gl.GLTexture;

class CubeTexture extends TextureBase 
{
    public var size : Int;

    public function new (glTexture:GLTexture, size : Int) {

        super (glTexture);
        this.size = size;

    }

   public function uploadCompressedTextureFromByteArray(data:ByteArray, byteArrayOffset:Int, async:Bool = false):Void 
   {
      // TODO
   }

   public function uploadFromBitmapData (source:BitmapData, side:Int, miplevel:Int = 0):Void {

        var p = source.getRGBAPixels();

        GL.bindTexture (GL.TEXTURE_CUBE_MAP, glTexture);
        // TODO
        //GL.texImage2D (GL.TEXTURE_CUBE_MAP, 0, GL.RGBA, source.width, source.height, 0, GL.RGBA, GL.UNSIGNED_BYTE, new ArrayBufferView (source, 0));

	}


	public function uploadFromByteArray(data:ByteArray, byteArrayOffset:Int, side:Int, miplevel:Int = 0):Void {

		// TODO

	}

}

#end