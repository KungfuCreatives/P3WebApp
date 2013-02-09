using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace P3WebApp
{
    public static class DisplayHelper
    {
        private static int pmpCost;
        private static int pmpCostSale;
        private static int capmCost;
        private static int capmCostSale;
        private static int l6giCost;
        private static int l6giCostSale;
        private static int l6biCost;
        private static int l6biCostSale;
        private static int earlyBirdDuration;
        private static int earlyBirdDiscountAmount;
        private static string earlyBirdClassComment;
        private static string twoWeeksOutClassComment;

        static DisplayHelper()
        {
            pmpCost = int.Parse(ConfigurationManager.AppSettings["Cost_PMP"]);
            pmpCostSale = int.Parse(ConfigurationManager.AppSettings["Cost_PMP_Sale"]);
            capmCost = int.Parse(ConfigurationManager.AppSettings["Cost_CAPM"]);
            capmCostSale = int.Parse(ConfigurationManager.AppSettings["Cost_CAPM_Sale"]);
            l6giCost = int.Parse(ConfigurationManager.AppSettings["Cost_L6GI"]);
            l6giCostSale = int.Parse(ConfigurationManager.AppSettings["Cost_L6GI_Sale"]);
            l6biCost = int.Parse(ConfigurationManager.AppSettings["Cost_L6BI"]);
            l6biCostSale = int.Parse(ConfigurationManager.AppSettings["Cost_L6BI_Sale"]);

            earlyBirdDuration = int.Parse(ConfigurationManager.AppSettings["EarlyBirdDuration"]);
            earlyBirdDiscountAmount = int.Parse(ConfigurationManager.AppSettings["EarlyBirdDiscountAmount"]);
            earlyBirdClassComment = ConfigurationManager.AppSettings["EarlyBirdClassComment"];
            twoWeeksOutClassComment = ConfigurationManager.AppSettings["TwoWeeksOutClassComment"];
        }

        public static string GetPriceText(DateTime classDate, ClassType classType)
        {
            var price = GetPrice(classDate, classType);
            var regularPrice = pmpCost;
            switch (classType)
            {
                case ClassType.CAPM:
                    regularPrice = capmCost;
                    break;
                case ClassType.SixSigmaGreenBelt:
                    regularPrice = l6giCost;
                    break;
                case ClassType.SixSigmaBlackBelt:
                    regularPrice = l6biCost;
                    break;
            }
            if (price < regularPrice)
                return "<nobr><span class='strikePriceText'>$" + regularPrice + "&nbsp;USD</span></nobr><br /><nobr><span class='salePriceText'>$" + price + "&nbsp;USD</span></nobr>";
            else
                return "<nobr>$" + price + "&nbsp;USD</nobr>";
        }
        public static int GetPrice(DateTime classDate, ClassType classType)
        {
            int calculatedPrice = int.MaxValue;
            int basePrice = 0;
            int salePrice = 0;
            switch (classType)
            {
                case ClassType.PMP:
                    calculatedPrice = basePrice = pmpCost;
                    salePrice = pmpCostSale;
                    break;
                case ClassType.CAPM:
                    calculatedPrice = basePrice = capmCost;
                    salePrice = capmCostSale;
                    break;
                case ClassType.SixSigmaGreenBelt:
                    calculatedPrice = basePrice = l6giCost;
                    salePrice = l6giCostSale;
                    break;
                case ClassType.SixSigmaBlackBelt:
                    calculatedPrice = basePrice = l6biCost;
                    salePrice = l6biCostSale;
                    break;
            }
            if (salePrice >= 0)
                calculatedPrice = salePrice;
            if (classDate > DateTime.Now.AddDays(earlyBirdDuration))
            {
                calculatedPrice -= earlyBirdDiscountAmount;
            }
            if (calculatedPrice < basePrice)
                return calculatedPrice;
            else
                return basePrice;
        }
        public static string GetComment(string comment, DateTime classDate)
        {
            if (!string.IsNullOrEmpty(comment))
                return comment;
            if (classDate > DateTime.Now.AddDays(earlyBirdDuration))
            {
                return earlyBirdClassComment;
            }
            if (classDate > DateTime.Now.AddDays(14))
            {
                return twoWeeksOutClassComment;
            }
            return string.Empty;
        }
    }
    public enum ClassType
    {
        PMP,
        CAPM,
        SixSigmaGreenBelt,
        SixSigmaBlackBelt
    }
}