package com.yuppablee.cardscan.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import io.card.payment.CardIOActivity;

/**
 * Created by Max Rozdobudko on 6/28/15.
 */
public class CanReadCardWithCameraFunction implements FREFunction
{
    @Override
    public FREObject call(FREContext freContext, FREObject[] freObjects)
    {
        try
        {
            return FREObject.newObject(CardIOActivity.canReadCardWithCamera());
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return null;
    }
}
