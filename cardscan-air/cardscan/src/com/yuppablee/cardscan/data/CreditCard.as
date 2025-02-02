/**
 * Created by Max Rozdobudko on 5/12/15.
 */
package com.yuppablee.cardscan.data
{
import flash.display.BitmapData;

import com.yuppablee.cardscan.CardScan;
import com.yuppablee.cardscan.core.card_scan;

use namespace card_scan

/**
 * Contains information about a card.
 */
public class CreditCard
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    public function CreditCard()
    {
        super();
    }

    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------

    //-------------------------------------
    //  cardNumber
    //-------------------------------------

    /**
     * Card number
     */
    public var cardNumber:String;

    //-------------------------------------
    //  redactedCardNumber
    //-------------------------------------

    /**
     * Card number with all but the last four digits obfuscated
     */
    public var redactedCardNumber:String;

    //-------------------------------------
    //  expiryMonth
    //-------------------------------------

    /**
     * January == 1
     *
     * @note expiryMonth & expiryYear may be 0, if expiry information was not requested.
     */
    public var expiryMonth:Number;

    //-------------------------------------
    //  expiryYear
    //-------------------------------------

    /**
     * The full four digit year.
     *
     * @note expiryMonth & expiryYear may be 0, if expiry information was not requested.
     */
    public var expiryYear:Number;

    //-------------------------------------
    //  cvv
    //-------------------------------------

    /**
     * Security code (aka CSC, CVV, CVV2, etc.)
     *
     * @note May be null, if security code was not requested.
     */
    public var cvv:String;

    //-------------------------------------
    //  postalCode
    //-------------------------------------

    /**
     * Postal code. Format is country dependent
     *
     * @note May be nil, if postal code information was not requested.
     */
    public var postalCode:String;

    //-------------------------------------
    //  scanned
    //-------------------------------------

    /**
     * Was the card number scanned (as opposed to entered manually)?
     *
     * @note May be nil, if postal code information was not requested.
     */
    public var scanned:Boolean;

    //-------------------------------------
    //  cardType
    //-------------------------------------

    /**
     * Derived from cardNumber.
     *
     * @note CardIOCreditInfo objects will never return a cardType of CreditCardTypeAmbiguous.
     */
    public var cardType:CreditCardType;

    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------

    public function toString():String
    {
        return '[CreditCard ' +
                'redactedCardNumber="' + redactedCardNumber + '"' +
                'expiryMonth="' + expiryMonth + '"' +
                'expiryYear="' + expiryYear + '"' +
                'postalCode="' + postalCode + '"' +
                'scanned="' + scanned + '"' +
                'cardType="' + cardType + '"'
                + ']';
    }
}
}
