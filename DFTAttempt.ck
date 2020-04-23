class CwDFT extends Chugen
{ 
    44100 => int sampleRate;
    256 => int dftSize;
    float inputBuffer[dftSize];
    float magAndPhaseBuffer[dftSize][2];

    0 => int increment;

    fun float fillBuffer(float input)
    {
         if(increment < dftSize)
         {
			input => inputBuffer[increment];
            increment++;
         }
        else
        {
        	calculateDft();
        	0 => increment;
        	input => inputBuffer[increment];
        	increment++;
        }
        return input;
    }

    fun void calculateDft()
    {
    	for(0 => int i; i < dftSize; i++)
    	{
    		for(0 => int j; j < dftSize; j++)
    		{
    			//now compare with sin and cos waves here and populate 2d array.
    		}
    	}
    }

    fun float tick(float input)
    {
        return fillBuffer(input);
    }
    
}

SinOsc s => CwDFT dft => dac;

while(1) 
{
    500::ms => now;
}
