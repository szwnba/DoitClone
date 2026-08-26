.class public Lcom/evernote/edam/type/Accounting;
.super Ljava/lang/Object;
.source "Accounting.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/type/Accounting;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final BUSINESS_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CURRENCY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_FAILED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_FAILED_CHARGE_REASON_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_REQUESTED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final LAST_SUCCESSFUL_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NEXT_CHARGE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NEXT_PAYMENT_DUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_COMMERCE_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_LOCK_UNTIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_ORDER_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_SERVICE_SKU_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_SERVICE_START_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_SERVICE_STATUS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_SUBSCRIPTION_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final UNIT_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UNIT_PRICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPLOAD_LIMIT_END_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPLOAD_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final UPLOAD_LIMIT_NEXT_MONTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __BUSINESSID_ISSET_ID:I = 0xb

.field private static final __LASTFAILEDCHARGE_ISSET_ID:I = 0x5

.field private static final __LASTREQUESTEDCHARGE_ISSET_ID:I = 0x9

.field private static final __LASTSUCCESSFULCHARGE_ISSET_ID:I = 0x4

.field private static final __NEXTCHARGEDATE_ISSET_ID:I = 0xd

.field private static final __NEXTPAYMENTDUE_ISSET_ID:I = 0x6

.field private static final __PREMIUMLOCKUNTIL_ISSET_ID:I = 0x7

.field private static final __PREMIUMSERVICESTART_ISSET_ID:I = 0x3

.field private static final __UNITDISCOUNT_ISSET_ID:I = 0xc

.field private static final __UNITPRICE_ISSET_ID:I = 0xa

.field private static final __UPDATED_ISSET_ID:I = 0x8

.field private static final __UPLOADLIMITEND_ISSET_ID:I = 0x1

.field private static final __UPLOADLIMITNEXTMONTH_ISSET_ID:I = 0x2

.field private static final __UPLOADLIMIT_ISSET_ID:I


# instance fields
.field private __isset_vector:[Z

.field private businessId:I

.field private businessName:Ljava/lang/String;

.field private businessRole:Lcom/evernote/edam/type/BusinessUserRole;

.field private currency:Ljava/lang/String;

.field private lastFailedCharge:J

.field private lastFailedChargeReason:Ljava/lang/String;

.field private lastRequestedCharge:J

.field private lastSuccessfulCharge:J

.field private nextChargeDate:J

.field private nextPaymentDue:J

.field private premiumCommerceService:Ljava/lang/String;

.field private premiumLockUntil:J

.field private premiumOrderNumber:Ljava/lang/String;

.field private premiumServiceSKU:Ljava/lang/String;

.field private premiumServiceStart:J

.field private premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

.field private premiumSubscriptionNumber:Ljava/lang/String;

.field private unitDiscount:I

.field private unitPrice:I

.field private updated:J

.field private uploadLimit:J

.field private uploadLimitEnd:J

.field private uploadLimitNextMonth:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0xb

    const/16 v3, 0xa

    .line 107
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "Accounting"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 109
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "uploadLimit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 110
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "uploadLimitEnd"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_END_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 111
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "uploadLimitNextMonth"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_NEXT_MONTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 112
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumServiceStatus"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_STATUS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 113
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumOrderNumber"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_ORDER_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 114
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumCommerceService"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_COMMERCE_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 115
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumServiceStart"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_START_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 116
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumServiceSKU"

    invoke-direct {v0, v1, v4, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_SKU_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 117
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastSuccessfulCharge"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->LAST_SUCCESSFUL_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 118
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastFailedCharge"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->LAST_FAILED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 119
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastFailedChargeReason"

    invoke-direct {v0, v1, v4, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->LAST_FAILED_CHARGE_REASON_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 120
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "nextPaymentDue"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->NEXT_PAYMENT_DUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 121
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumLockUntil"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_LOCK_UNTIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 122
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "updated"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 123
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumSubscriptionNumber"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SUBSCRIPTION_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 124
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "lastRequestedCharge"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->LAST_REQUESTED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 125
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "currency"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->CURRENCY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 126
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "unitPrice"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UNIT_PRICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 127
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessId"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 128
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessName"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 129
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessRole"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 130
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "unitDiscount"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->UNIT_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 131
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "nextChargeDate"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/Accounting;->NEXT_CHARGE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/16 v0, 0xe

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/Accounting;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/Accounting;

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/16 v0, 0xe

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    .line 182
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    .line 184
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    .line 185
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    .line 186
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    .line 195
    :cond_2
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    .line 196
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    .line 199
    :cond_3
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    .line 200
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    .line 201
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    .line 204
    :cond_4
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    .line 205
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    .line 206
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->updated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    .line 207
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    .line 210
    :cond_5
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    .line 211
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    .line 214
    :cond_6
    iget v0, p1, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    .line 215
    iget v0, p1, Lcom/evernote/edam/type/Accounting;->businessId:I

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    .line 216
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    .line 219
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 220
    iget-object v0, p1, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    .line 222
    :cond_8
    iget v0, p1, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    .line 223
    iget-wide v0, p1, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    .line 224
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitIsSet(Z)V

    .line 232
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    .line 233
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitEndIsSet(Z)V

    .line 234
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    .line 235
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitNextMonthIsSet(Z)V

    .line 236
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    .line 237
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    .line 238
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    .line 240
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setPremiumServiceStartIsSet(Z)V

    .line 241
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    .line 242
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    .line 243
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastSuccessfulChargeIsSet(Z)V

    .line 244
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    .line 245
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastFailedChargeIsSet(Z)V

    .line 246
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    .line 247
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    .line 248
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setNextPaymentDueIsSet(Z)V

    .line 249
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    .line 250
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setPremiumLockUntilIsSet(Z)V

    .line 251
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    .line 252
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUpdatedIsSet(Z)V

    .line 253
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    .line 254
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    .line 255
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastRequestedChargeIsSet(Z)V

    .line 256
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    .line 257
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUnitPriceIsSet(Z)V

    .line 259
    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    .line 260
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setBusinessIdIsSet(Z)V

    .line 261
    iput v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    .line 262
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    .line 263
    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    .line 264
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUnitDiscountIsSet(Z)V

    .line 265
    iput v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    .line 266
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setNextChargeDateIsSet(Z)V

    .line 267
    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    .line 268
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/Accounting;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/type/Accounting;

    .prologue
    .line 1030
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1031
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1244
    :cond_0
    :goto_0
    return v0

    .line 1034
    :cond_1
    const/4 v0, 0x0

    .line 1035
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 1037
    .local v1, "typedOther":Lcom/evernote/edam/type/Accounting;
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1038
    if-nez v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1042
    if-nez v0, :cond_0

    .line 1046
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1047
    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1051
    if-nez v0, :cond_0

    .line 1055
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1056
    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1060
    if-nez v0, :cond_0

    .line 1064
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1065
    if-nez v0, :cond_0

    .line 1068
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1069
    if-nez v0, :cond_0

    .line 1073
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1074
    if-nez v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1078
    if-nez v0, :cond_0

    .line 1082
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1083
    if-nez v0, :cond_0

    .line 1086
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1087
    if-nez v0, :cond_0

    .line 1091
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1092
    if-nez v0, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1096
    if-nez v0, :cond_0

    .line 1100
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1101
    if-nez v0, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1105
    if-nez v0, :cond_0

    .line 1109
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1110
    if-nez v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1114
    if-nez v0, :cond_0

    .line 1118
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1119
    if-nez v0, :cond_0

    .line 1122
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1123
    if-nez v0, :cond_0

    .line 1127
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1128
    if-nez v0, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1132
    if-nez v0, :cond_0

    .line 1136
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1137
    if-nez v0, :cond_0

    .line 1140
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1141
    if-nez v0, :cond_0

    .line 1145
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1146
    if-nez v0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1150
    if-nez v0, :cond_0

    .line 1154
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1155
    if-nez v0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->updated:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1159
    if-nez v0, :cond_0

    .line 1163
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1164
    if-nez v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1168
    if-nez v0, :cond_0

    .line 1172
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1173
    if-nez v0, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1177
    if-nez v0, :cond_0

    .line 1181
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1182
    if-nez v0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1186
    if-nez v0, :cond_0

    .line 1190
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1191
    if-nez v0, :cond_0

    .line 1194
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    iget v3, v1, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1195
    if-nez v0, :cond_0

    .line 1199
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1200
    if-nez v0, :cond_0

    .line 1203
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    iget v3, v1, Lcom/evernote/edam/type/Accounting;->businessId:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1204
    if-nez v0, :cond_0

    .line 1208
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1209
    if-nez v0, :cond_0

    .line 1212
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1213
    if-nez v0, :cond_0

    .line 1217
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1218
    if-nez v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    iget-object v3, v1, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1222
    if-nez v0, :cond_0

    .line 1226
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1227
    if-nez v0, :cond_0

    .line 1230
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    iget v3, v1, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1231
    if-nez v0, :cond_0

    .line 1235
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1236
    if-nez v0, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    iget-wide v4, v1, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1240
    if-nez v0, :cond_0

    .line 1244
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/evernote/edam/type/Accounting;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->compareTo(Lcom/evernote/edam/type/Accounting;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/Accounting;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/evernote/edam/type/Accounting;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/Accounting;-><init>(Lcom/evernote/edam/type/Accounting;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->deepCopy()Lcom/evernote/edam/type/Accounting;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/Accounting;)Z
    .locals 52
    .param p1, "that"    # Lcom/evernote/edam/type/Accounting;

    .prologue
    .line 811
    if-nez p1, :cond_0

    .line 812
    const/16 v48, 0x0

    .line 1021
    :goto_0
    return v48

    .line 814
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v45

    .line 815
    .local v45, "this_present_uploadLimit":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v22

    .line 816
    .local v22, "that_present_uploadLimit":Z
    if-nez v45, :cond_1

    if-eqz v22, :cond_4

    .line 817
    :cond_1
    if-eqz v45, :cond_2

    if-nez v22, :cond_3

    .line 818
    :cond_2
    const/16 v48, 0x0

    goto :goto_0

    .line 819
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_4

    .line 820
    const/16 v48, 0x0

    goto :goto_0

    .line 823
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v46

    .line 824
    .local v46, "this_present_uploadLimitEnd":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v23

    .line 825
    .local v23, "that_present_uploadLimitEnd":Z
    if-nez v46, :cond_5

    if-eqz v23, :cond_8

    .line 826
    :cond_5
    if-eqz v46, :cond_6

    if-nez v23, :cond_7

    .line 827
    :cond_6
    const/16 v48, 0x0

    goto :goto_0

    .line 828
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_8

    .line 829
    const/16 v48, 0x0

    goto :goto_0

    .line 832
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v47

    .line 833
    .local v47, "this_present_uploadLimitNextMonth":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v24

    .line 834
    .local v24, "that_present_uploadLimitNextMonth":Z
    if-nez v47, :cond_9

    if-eqz v24, :cond_c

    .line 835
    :cond_9
    if-eqz v47, :cond_a

    if-nez v24, :cond_b

    .line 836
    :cond_a
    const/16 v48, 0x0

    goto :goto_0

    .line 837
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_c

    .line 838
    const/16 v48, 0x0

    goto :goto_0

    .line 841
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v40

    .line 842
    .local v40, "this_present_premiumServiceStatus":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v17

    .line 843
    .local v17, "that_present_premiumServiceStatus":Z
    if-nez v40, :cond_d

    if-eqz v17, :cond_10

    .line 844
    :cond_d
    if-eqz v40, :cond_e

    if-nez v17, :cond_f

    .line 845
    :cond_e
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 846
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/evernote/edam/type/PremiumOrderStatus;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_10

    .line 847
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 850
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v37

    .line 851
    .local v37, "this_present_premiumOrderNumber":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v14

    .line 852
    .local v14, "that_present_premiumOrderNumber":Z
    if-nez v37, :cond_11

    if-eqz v14, :cond_14

    .line 853
    :cond_11
    if-eqz v37, :cond_12

    if-nez v14, :cond_13

    .line 854
    :cond_12
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 855
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_14

    .line 856
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 859
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v35

    .line 860
    .local v35, "this_present_premiumCommerceService":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v12

    .line 861
    .local v12, "that_present_premiumCommerceService":Z
    if-nez v35, :cond_15

    if-eqz v12, :cond_18

    .line 862
    :cond_15
    if-eqz v35, :cond_16

    if-nez v12, :cond_17

    .line 863
    :cond_16
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 864
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_18

    .line 865
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 868
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v39

    .line 869
    .local v39, "this_present_premiumServiceStart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v16

    .line 870
    .local v16, "that_present_premiumServiceStart":Z
    if-nez v39, :cond_19

    if-eqz v16, :cond_1c

    .line 871
    :cond_19
    if-eqz v39, :cond_1a

    if-nez v16, :cond_1b

    .line 872
    :cond_1a
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 873
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_1c

    .line 874
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 877
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v38

    .line 878
    .local v38, "this_present_premiumServiceSKU":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v15

    .line 879
    .local v15, "that_present_premiumServiceSKU":Z
    if-nez v38, :cond_1d

    if-eqz v15, :cond_20

    .line 880
    :cond_1d
    if-eqz v38, :cond_1e

    if-nez v15, :cond_1f

    .line 881
    :cond_1e
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 882
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_20

    .line 883
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 886
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v32

    .line 887
    .local v32, "this_present_lastSuccessfulCharge":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v9

    .line 888
    .local v9, "that_present_lastSuccessfulCharge":Z
    if-nez v32, :cond_21

    if-eqz v9, :cond_24

    .line 889
    :cond_21
    if-eqz v32, :cond_22

    if-nez v9, :cond_23

    .line 890
    :cond_22
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 891
    :cond_23
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_24

    .line 892
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 895
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v29

    .line 896
    .local v29, "this_present_lastFailedCharge":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v6

    .line 897
    .local v6, "that_present_lastFailedCharge":Z
    if-nez v29, :cond_25

    if-eqz v6, :cond_28

    .line 898
    :cond_25
    if-eqz v29, :cond_26

    if-nez v6, :cond_27

    .line 899
    :cond_26
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 900
    :cond_27
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_28

    .line 901
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 904
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v30

    .line 905
    .local v30, "this_present_lastFailedChargeReason":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v7

    .line 906
    .local v7, "that_present_lastFailedChargeReason":Z
    if-nez v30, :cond_29

    if-eqz v7, :cond_2c

    .line 907
    :cond_29
    if-eqz v30, :cond_2a

    if-nez v7, :cond_2b

    .line 908
    :cond_2a
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 909
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_2c

    .line 910
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 913
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v34

    .line 914
    .local v34, "this_present_nextPaymentDue":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v11

    .line 915
    .local v11, "that_present_nextPaymentDue":Z
    if-nez v34, :cond_2d

    if-eqz v11, :cond_30

    .line 916
    :cond_2d
    if-eqz v34, :cond_2e

    if-nez v11, :cond_2f

    .line 917
    :cond_2e
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 918
    :cond_2f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_30

    .line 919
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 922
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v36

    .line 923
    .local v36, "this_present_premiumLockUntil":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v13

    .line 924
    .local v13, "that_present_premiumLockUntil":Z
    if-nez v36, :cond_31

    if-eqz v13, :cond_34

    .line 925
    :cond_31
    if-eqz v36, :cond_32

    if-nez v13, :cond_33

    .line 926
    :cond_32
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 927
    :cond_33
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_34

    .line 928
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 931
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v44

    .line 932
    .local v44, "this_present_updated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v21

    .line 933
    .local v21, "that_present_updated":Z
    if-nez v44, :cond_35

    if-eqz v21, :cond_38

    .line 934
    :cond_35
    if-eqz v44, :cond_36

    if-nez v21, :cond_37

    .line 935
    :cond_36
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 936
    :cond_37
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->updated:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->updated:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_38

    .line 937
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 940
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v41

    .line 941
    .local v41, "this_present_premiumSubscriptionNumber":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v18

    .line 942
    .local v18, "that_present_premiumSubscriptionNumber":Z
    if-nez v41, :cond_39

    if-eqz v18, :cond_3c

    .line 943
    :cond_39
    if-eqz v41, :cond_3a

    if-nez v18, :cond_3b

    .line 944
    :cond_3a
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 945
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_3c

    .line 946
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 949
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v31

    .line 950
    .local v31, "this_present_lastRequestedCharge":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v8

    .line 951
    .local v8, "that_present_lastRequestedCharge":Z
    if-nez v31, :cond_3d

    if-eqz v8, :cond_40

    .line 952
    :cond_3d
    if-eqz v31, :cond_3e

    if-nez v8, :cond_3f

    .line 953
    :cond_3e
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 954
    :cond_3f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_40

    .line 955
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 958
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v28

    .line 959
    .local v28, "this_present_currency":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v5

    .line 960
    .local v5, "that_present_currency":Z
    if-nez v28, :cond_41

    if-eqz v5, :cond_44

    .line 961
    :cond_41
    if-eqz v28, :cond_42

    if-nez v5, :cond_43

    .line 962
    :cond_42
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 963
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_44

    .line 964
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 967
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v43

    .line 968
    .local v43, "this_present_unitPrice":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v20

    .line 969
    .local v20, "that_present_unitPrice":Z
    if-nez v43, :cond_45

    if-eqz v20, :cond_48

    .line 970
    :cond_45
    if-eqz v43, :cond_46

    if-nez v20, :cond_47

    .line 971
    :cond_46
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 972
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    move/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_48

    .line 973
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 976
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v25

    .line 977
    .local v25, "this_present_businessId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v2

    .line 978
    .local v2, "that_present_businessId":Z
    if-nez v25, :cond_49

    if-eqz v2, :cond_4c

    .line 979
    :cond_49
    if-eqz v25, :cond_4a

    if-nez v2, :cond_4b

    .line 980
    :cond_4a
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 981
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/Accounting;->businessId:I

    move/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/Accounting;->businessId:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_4c

    .line 982
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 985
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v26

    .line 986
    .local v26, "this_present_businessName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v3

    .line 987
    .local v3, "that_present_businessName":Z
    if-nez v26, :cond_4d

    if-eqz v3, :cond_50

    .line 988
    :cond_4d
    if-eqz v26, :cond_4e

    if-nez v3, :cond_4f

    .line 989
    :cond_4e
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 990
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_50

    .line 991
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 994
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v27

    .line 995
    .local v27, "this_present_businessRole":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v4

    .line 996
    .local v4, "that_present_businessRole":Z
    if-nez v27, :cond_51

    if-eqz v4, :cond_54

    .line 997
    :cond_51
    if-eqz v27, :cond_52

    if-nez v4, :cond_53

    .line 998
    :cond_52
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 999
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/evernote/edam/type/BusinessUserRole;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_54

    .line 1000
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 1003
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v42

    .line 1004
    .local v42, "this_present_unitDiscount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v19

    .line 1005
    .local v19, "that_present_unitDiscount":Z
    if-nez v42, :cond_55

    if-eqz v19, :cond_58

    .line 1006
    :cond_55
    if-eqz v42, :cond_56

    if-nez v19, :cond_57

    .line 1007
    :cond_56
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 1008
    :cond_57
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    move/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_58

    .line 1009
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 1012
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v33

    .line 1013
    .local v33, "this_present_nextChargeDate":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v10

    .line 1014
    .local v10, "that_present_nextChargeDate":Z
    if-nez v33, :cond_59

    if-eqz v10, :cond_5c

    .line 1015
    :cond_59
    if-eqz v33, :cond_5a

    if-nez v10, :cond_5b

    .line 1016
    :cond_5a
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 1017
    :cond_5b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    move-wide/from16 v50, v0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_5c

    .line 1018
    const/16 v48, 0x0

    goto/16 :goto_0

    .line 1021
    :cond_5c
    const/16 v48, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 803
    if-nez p1, :cond_1

    .line 807
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 805
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/Accounting;

    if-eqz v1, :cond_0

    .line 806
    check-cast p1, Lcom/evernote/edam/type/Accounting;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Accounting;->equals(Lcom/evernote/edam/type/Accounting;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBusinessId()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    return v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessRole()Lcom/evernote/edam/type/BusinessUserRole;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFailedCharge()J
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    return-wide v0
.end method

.method public getLastFailedChargeReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRequestedCharge()J
    .locals 2

    .prologue
    .line 615
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    return-wide v0
.end method

.method public getLastSuccessfulCharge()J
    .locals 2

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    return-wide v0
.end method

.method public getNextChargeDate()J
    .locals 2

    .prologue
    .line 780
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    return-wide v0
.end method

.method public getNextPaymentDue()J
    .locals 2

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    return-wide v0
.end method

.method public getPremiumCommerceService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumLockUntil()J
    .locals 2

    .prologue
    .line 548
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    return-wide v0
.end method

.method public getPremiumOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumServiceSKU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumServiceStart()J
    .locals 2

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    return-wide v0
.end method

.method public getPremiumServiceStatus()Lcom/evernote/edam/type/PremiumOrderStatus;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object v0
.end method

.method public getPremiumSubscriptionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitDiscount()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    return v0
.end method

.method public getUnitPrice()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    return v0
.end method

.method public getUpdated()J
    .locals 2

    .prologue
    .line 570
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    return-wide v0
.end method

.method public getUploadLimit()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    return-wide v0
.end method

.method public getUploadLimitEnd()J
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    return-wide v0
.end method

.method public getUploadLimitNextMonth()J
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    return v0
.end method

.method public isSetBusinessId()Z
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetBusinessName()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetBusinessRole()Z
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetCurrency()Z
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLastFailedCharge()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetLastFailedChargeReason()Z
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetLastRequestedCharge()Z
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetLastSuccessfulCharge()Z
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetNextChargeDate()Z
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetNextPaymentDue()Z
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumCommerceService()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPremiumLockUntil()Z
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumOrderNumber()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPremiumServiceSKU()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPremiumServiceStart()Z
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumServiceStatus()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPremiumSubscriptionNumber()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUnitDiscount()Z
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUnitPrice()Z
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUpdated()Z
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUploadLimit()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUploadLimitEnd()Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUploadLimitNextMonth()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 8
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 1249
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 1252
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 1253
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 1437
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1438
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->validate()V

    .line 1439
    return-void

    .line 1256
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 1433
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 1435
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1258
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_1

    .line 1259
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    .line 1260
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setUploadLimitIsSet(Z)V

    goto :goto_1

    .line 1262
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1266
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_2

    .line 1267
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    .line 1268
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setUploadLimitEndIsSet(Z)V

    goto :goto_1

    .line 1270
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1274
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_3

    .line 1275
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    .line 1276
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setUploadLimitNextMonthIsSet(Z)V

    goto :goto_1

    .line 1278
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1282
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_4

    .line 1283
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/type/PremiumOrderStatus;->findByValue(I)Lcom/evernote/edam/type/PremiumOrderStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    goto :goto_1

    .line 1285
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1289
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_5

    .line 1290
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    goto :goto_1

    .line 1292
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1296
    :pswitch_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_6

    .line 1297
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    goto :goto_1

    .line 1299
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1303
    :pswitch_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_7

    .line 1304
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    .line 1305
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setPremiumServiceStartIsSet(Z)V

    goto/16 :goto_1

    .line 1307
    :cond_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1311
    :pswitch_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_8

    .line 1312
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    goto/16 :goto_1

    .line 1314
    :cond_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1318
    :pswitch_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_9

    .line 1319
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    .line 1320
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setLastSuccessfulChargeIsSet(Z)V

    goto/16 :goto_1

    .line 1322
    :cond_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1326
    :pswitch_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_a

    .line 1327
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    .line 1328
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setLastFailedChargeIsSet(Z)V

    goto/16 :goto_1

    .line 1330
    :cond_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1334
    :pswitch_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_b

    .line 1335
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    goto/16 :goto_1

    .line 1337
    :cond_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1341
    :pswitch_c
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_c

    .line 1342
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    .line 1343
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setNextPaymentDueIsSet(Z)V

    goto/16 :goto_1

    .line 1345
    :cond_c
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1349
    :pswitch_d
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_d

    .line 1350
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    .line 1351
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setPremiumLockUntilIsSet(Z)V

    goto/16 :goto_1

    .line 1353
    :cond_d
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1357
    :pswitch_e
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_e

    .line 1358
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    .line 1359
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setUpdatedIsSet(Z)V

    goto/16 :goto_1

    .line 1361
    :cond_e
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1365
    :pswitch_f
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_f

    .line 1366
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 1368
    :cond_f
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1372
    :pswitch_10
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_10

    .line 1373
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    .line 1374
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setLastRequestedChargeIsSet(Z)V

    goto/16 :goto_1

    .line 1376
    :cond_10
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1380
    :pswitch_11
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_11

    .line 1381
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    goto/16 :goto_1

    .line 1383
    :cond_11
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1387
    :pswitch_12
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_12

    .line 1388
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    .line 1389
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setUnitPriceIsSet(Z)V

    goto/16 :goto_1

    .line 1391
    :cond_12
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1395
    :pswitch_13
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_13

    .line 1396
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    .line 1397
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setBusinessIdIsSet(Z)V

    goto/16 :goto_1

    .line 1399
    :cond_13
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1403
    :pswitch_14
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_14

    .line 1404
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1406
    :cond_14
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1410
    :pswitch_15
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_15

    .line 1411
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/type/BusinessUserRole;->findByValue(I)Lcom/evernote/edam/type/BusinessUserRole;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    goto/16 :goto_1

    .line 1413
    :cond_15
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1417
    :pswitch_16
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_16

    .line 1418
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    .line 1419
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setUnitDiscountIsSet(Z)V

    goto/16 :goto_1

    .line 1421
    :cond_16
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1425
    :pswitch_17
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_17

    .line 1426
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    .line 1427
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/Accounting;->setNextChargeDateIsSet(Z)V

    goto/16 :goto_1

    .line 1429
    :cond_17
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public setBusinessId(I)V
    .locals 1
    .param p1, "businessId"    # I

    .prologue
    .line 686
    iput p1, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    .line 687
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setBusinessIdIsSet(Z)V

    .line 688
    return-void
.end method

.method public setBusinessIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 700
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xb

    aput-boolean p1, v0, v1

    .line 701
    return-void
.end method

.method public setBusinessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessName"    # Ljava/lang/String;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    .line 709
    return-void
.end method

.method public setBusinessNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 721
    if-nez p1, :cond_0

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    .line 724
    :cond_0
    return-void
.end method

.method public setBusinessRole(Lcom/evernote/edam/type/BusinessUserRole;)V
    .locals 0
    .param p1, "businessRole"    # Lcom/evernote/edam/type/BusinessUserRole;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    .line 740
    return-void
.end method

.method public setBusinessRoleIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 752
    if-nez p1, :cond_0

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    .line 755
    :cond_0
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    .line 642
    return-void
.end method

.method public setCurrencyIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    .line 657
    :cond_0
    return-void
.end method

.method public setLastFailedCharge(J)V
    .locals 1
    .param p1, "lastFailedCharge"    # J

    .prologue
    .line 485
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastFailedChargeIsSet(Z)V

    .line 487
    return-void
.end method

.method public setLastFailedChargeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 500
    return-void
.end method

.method public setLastFailedChargeReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastFailedChargeReason"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setLastFailedChargeReasonIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    .line 523
    :cond_0
    return-void
.end method

.method public setLastRequestedCharge(J)V
    .locals 1
    .param p1, "lastRequestedCharge"    # J

    .prologue
    .line 619
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    .line 620
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastRequestedChargeIsSet(Z)V

    .line 621
    return-void
.end method

.method public setLastRequestedChargeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 633
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0x9

    aput-boolean p1, v0, v1

    .line 634
    return-void
.end method

.method public setLastSuccessfulCharge(J)V
    .locals 1
    .param p1, "lastSuccessfulCharge"    # J

    .prologue
    .line 463
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setLastSuccessfulChargeIsSet(Z)V

    .line 465
    return-void
.end method

.method public setLastSuccessfulChargeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 477
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 478
    return-void
.end method

.method public setNextChargeDate(J)V
    .locals 1
    .param p1, "nextChargeDate"    # J

    .prologue
    .line 784
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    .line 785
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setNextChargeDateIsSet(Z)V

    .line 786
    return-void
.end method

.method public setNextChargeDateIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 798
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xd

    aput-boolean p1, v0, v1

    .line 799
    return-void
.end method

.method public setNextPaymentDue(J)V
    .locals 1
    .param p1, "nextPaymentDue"    # J

    .prologue
    .line 530
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setNextPaymentDueIsSet(Z)V

    .line 532
    return-void
.end method

.method public setNextPaymentDueIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 544
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x6

    aput-boolean p1, v0, v1

    .line 545
    return-void
.end method

.method public setPremiumCommerceService(Ljava/lang/String;)V
    .locals 0
    .param p1, "premiumCommerceService"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setPremiumCommerceServiceIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    .line 411
    :cond_0
    return-void
.end method

.method public setPremiumLockUntil(J)V
    .locals 1
    .param p1, "premiumLockUntil"    # J

    .prologue
    .line 552
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    .line 553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setPremiumLockUntilIsSet(Z)V

    .line 554
    return-void
.end method

.method public setPremiumLockUntilIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x7

    aput-boolean p1, v0, v1

    .line 567
    return-void
.end method

.method public setPremiumOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "premiumOrderNumber"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setPremiumOrderNumberIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    .line 388
    :cond_0
    return-void
.end method

.method public setPremiumServiceSKU(Ljava/lang/String;)V
    .locals 0
    .param p1, "premiumServiceSKU"    # Ljava/lang/String;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setPremiumServiceSKUIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    .line 456
    :cond_0
    return-void
.end method

.method public setPremiumServiceStart(J)V
    .locals 1
    .param p1, "premiumServiceStart"    # J

    .prologue
    .line 418
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setPremiumServiceStartIsSet(Z)V

    .line 420
    return-void
.end method

.method public setPremiumServiceStartIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 432
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 433
    return-void
.end method

.method public setPremiumServiceStatus(Lcom/evernote/edam/type/PremiumOrderStatus;)V
    .locals 0
    .param p1, "premiumServiceStatus"    # Lcom/evernote/edam/type/PremiumOrderStatus;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    .line 350
    return-void
.end method

.method public setPremiumServiceStatusIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    .line 365
    :cond_0
    return-void
.end method

.method public setPremiumSubscriptionNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "premiumSubscriptionNumber"    # Ljava/lang/String;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public setPremiumSubscriptionNumberIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 609
    if-nez p1, :cond_0

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    .line 612
    :cond_0
    return-void
.end method

.method public setUnitDiscount(I)V
    .locals 1
    .param p1, "unitDiscount"    # I

    .prologue
    .line 762
    iput p1, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUnitDiscountIsSet(Z)V

    .line 764
    return-void
.end method

.method public setUnitDiscountIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 776
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xc

    aput-boolean p1, v0, v1

    .line 777
    return-void
.end method

.method public setUnitPrice(I)V
    .locals 1
    .param p1, "unitPrice"    # I

    .prologue
    .line 664
    iput p1, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    .line 665
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUnitPriceIsSet(Z)V

    .line 666
    return-void
.end method

.method public setUnitPriceIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 678
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xa

    aput-boolean p1, v0, v1

    .line 679
    return-void
.end method

.method public setUpdated(J)V
    .locals 1
    .param p1, "updated"    # J

    .prologue
    .line 574
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUpdatedIsSet(Z)V

    .line 576
    return-void
.end method

.method public setUpdatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 588
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0x8

    aput-boolean p1, v0, v1

    .line 589
    return-void
.end method

.method public setUploadLimit(J)V
    .locals 1
    .param p1, "uploadLimit"    # J

    .prologue
    .line 275
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitIsSet(Z)V

    .line 277
    return-void
.end method

.method public setUploadLimitEnd(J)V
    .locals 1
    .param p1, "uploadLimitEnd"    # J

    .prologue
    .line 297
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitEndIsSet(Z)V

    .line 299
    return-void
.end method

.method public setUploadLimitEndIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 311
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 312
    return-void
.end method

.method public setUploadLimitIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 290
    return-void
.end method

.method public setUploadLimitNextMonth(J)V
    .locals 1
    .param p1, "uploadLimitNextMonth"    # J

    .prologue
    .line 319
    iput-wide p1, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/Accounting;->setUploadLimitNextMonthIsSet(Z)V

    .line 321
    return-void
.end method

.method public setUploadLimitNextMonthIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 334
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accounting("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1585
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1587
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1588
    const-string v2, "uploadLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1590
    const/4 v0, 0x0

    .line 1592
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1593
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    :cond_1
    const-string v2, "uploadLimitEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1596
    const/4 v0, 0x0

    .line 1598
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1599
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    :cond_3
    const-string v2, "uploadLimitNextMonth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1602
    const/4 v0, 0x0

    .line 1604
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1605
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    :cond_5
    const-string v2, "premiumServiceStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    if-nez v2, :cond_2d

    .line 1608
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :goto_0
    const/4 v0, 0x0

    .line 1614
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1615
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    :cond_7
    const-string v2, "premiumOrderNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    if-nez v2, :cond_2e

    .line 1618
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    :goto_1
    const/4 v0, 0x0

    .line 1624
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1625
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    :cond_9
    const-string v2, "premiumCommerceService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    if-nez v2, :cond_2f

    .line 1628
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    :goto_2
    const/4 v0, 0x0

    .line 1634
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1635
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_b
    const-string v2, "premiumServiceStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1638
    const/4 v0, 0x0

    .line 1640
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1641
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    :cond_d
    const-string v2, "premiumServiceSKU:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    if-nez v2, :cond_30

    .line 1644
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    :goto_3
    const/4 v0, 0x0

    .line 1650
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1651
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    :cond_f
    const-string v2, "lastSuccessfulCharge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1654
    const/4 v0, 0x0

    .line 1656
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1657
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    :cond_11
    const-string v2, "lastFailedCharge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1660
    const/4 v0, 0x0

    .line 1662
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1663
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    :cond_13
    const-string v2, "lastFailedChargeReason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 1666
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    :goto_4
    const/4 v0, 0x0

    .line 1672
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1673
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    :cond_15
    const-string v2, "nextPaymentDue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1676
    const/4 v0, 0x0

    .line 1678
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1679
    if-nez v0, :cond_17

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    :cond_17
    const-string v2, "premiumLockUntil:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1682
    const/4 v0, 0x0

    .line 1684
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1685
    if-nez v0, :cond_19

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    :cond_19
    const-string v2, "updated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1688
    const/4 v0, 0x0

    .line 1690
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1691
    if-nez v0, :cond_1b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    :cond_1b
    const-string v2, "premiumSubscriptionNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    if-nez v2, :cond_32

    .line 1694
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    :goto_5
    const/4 v0, 0x0

    .line 1700
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1701
    if-nez v0, :cond_1d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    :cond_1d
    const-string v2, "lastRequestedCharge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1704
    const/4 v0, 0x0

    .line 1706
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1707
    if-nez v0, :cond_1f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    :cond_1f
    const-string v2, "currency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    if-nez v2, :cond_33

    .line 1710
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    :goto_6
    const/4 v0, 0x0

    .line 1716
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1717
    if-nez v0, :cond_21

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    :cond_21
    const-string v2, "unitPrice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    iget v2, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1720
    const/4 v0, 0x0

    .line 1722
    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1723
    if-nez v0, :cond_23

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    :cond_23
    const-string v2, "businessId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    iget v2, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1726
    const/4 v0, 0x0

    .line 1728
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1729
    if-nez v0, :cond_25

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    :cond_25
    const-string v2, "businessName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    if-nez v2, :cond_34

    .line 1732
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    :goto_7
    const/4 v0, 0x0

    .line 1738
    :cond_26
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1739
    if-nez v0, :cond_27

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    :cond_27
    const-string v2, "businessRole:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    if-nez v2, :cond_35

    .line 1742
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    :goto_8
    const/4 v0, 0x0

    .line 1748
    :cond_28
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1749
    if-nez v0, :cond_29

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    :cond_29
    const-string v2, "unitDiscount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    iget v2, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1752
    const/4 v0, 0x0

    .line 1754
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1755
    if-nez v0, :cond_2b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    :cond_2b
    const-string v2, "nextChargeDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    iget-wide v2, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1758
    const/4 v0, 0x0

    .line 1760
    :cond_2c
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1610
    :cond_2d
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1620
    :cond_2e
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1630
    :cond_2f
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1646
    :cond_30
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1668
    :cond_31
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1696
    :cond_32
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1712
    :cond_33
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1734
    :cond_34
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1744
    :cond_35
    iget-object v2, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method public unsetBusinessId()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 692
    return-void
.end method

.method public unsetBusinessName()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public unsetBusinessRole()V
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    .line 744
    return-void
.end method

.method public unsetCurrency()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public unsetLastFailedCharge()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 491
    return-void
.end method

.method public unsetLastFailedChargeReason()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public unsetLastRequestedCharge()V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 625
    return-void
.end method

.method public unsetLastSuccessfulCharge()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 469
    return-void
.end method

.method public unsetNextChargeDate()V
    .locals 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 790
    return-void
.end method

.method public unsetNextPaymentDue()V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 536
    return-void
.end method

.method public unsetPremiumCommerceService()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public unsetPremiumLockUntil()V
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 558
    return-void
.end method

.method public unsetPremiumOrderNumber()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public unsetPremiumServiceSKU()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public unsetPremiumServiceStart()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 424
    return-void
.end method

.method public unsetPremiumServiceStatus()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    .line 354
    return-void
.end method

.method public unsetPremiumSubscriptionNumber()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    .line 601
    return-void
.end method

.method public unsetUnitDiscount()V
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 768
    return-void
.end method

.method public unsetUnitPrice()V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 670
    return-void
.end method

.method public unsetUpdated()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 580
    return-void
.end method

.method public unsetUploadLimit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 281
    return-void
.end method

.method public unsetUploadLimitEnd()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 303
    return-void
.end method

.method public unsetUploadLimitNextMonth()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 325
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1766
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 2
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->validate()V

    .line 1444
    sget-object v0, Lcom/evernote/edam/type/Accounting;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 1445
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    sget-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1447
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimit:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1448
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1450
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1451
    sget-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_END_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1452
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitEnd:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1453
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1455
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUploadLimitNextMonth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1456
    sget-object v0, Lcom/evernote/edam/type/Accounting;->UPLOAD_LIMIT_NEXT_MONTH_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1457
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->uploadLimitNextMonth:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1458
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1460
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    if-eqz v0, :cond_3

    .line 1461
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1462
    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_STATUS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1463
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStatus:Lcom/evernote/edam/type/PremiumOrderStatus;

    invoke-virtual {v0}, Lcom/evernote/edam/type/PremiumOrderStatus;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1464
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1467
    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1468
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumOrderNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1469
    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_ORDER_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1470
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1474
    :cond_4
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1475
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumCommerceService()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1476
    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_COMMERCE_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1477
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumCommerceService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1481
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1482
    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_START_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1483
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceStart:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1484
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1486
    :cond_6
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1487
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumServiceSKU()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1488
    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SERVICE_SKU_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1489
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumServiceSKU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1493
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastSuccessfulCharge()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1494
    sget-object v0, Lcom/evernote/edam/type/Accounting;->LAST_SUCCESSFUL_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1495
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastSuccessfulCharge:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1496
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1498
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedCharge()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1499
    sget-object v0, Lcom/evernote/edam/type/Accounting;->LAST_FAILED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1500
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedCharge:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1501
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1503
    :cond_9
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1504
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastFailedChargeReason()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1505
    sget-object v0, Lcom/evernote/edam/type/Accounting;->LAST_FAILED_CHARGE_REASON_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1506
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->lastFailedChargeReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1510
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextPaymentDue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1511
    sget-object v0, Lcom/evernote/edam/type/Accounting;->NEXT_PAYMENT_DUE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1512
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextPaymentDue:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1513
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1515
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumLockUntil()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1516
    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_LOCK_UNTIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1517
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->premiumLockUntil:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1518
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1520
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUpdated()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1521
    sget-object v0, Lcom/evernote/edam/type/Accounting;->UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1522
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->updated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1523
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1525
    :cond_d
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1526
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetPremiumSubscriptionNumber()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1527
    sget-object v0, Lcom/evernote/edam/type/Accounting;->PREMIUM_SUBSCRIPTION_NUMBER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1528
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->premiumSubscriptionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1532
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetLastRequestedCharge()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1533
    sget-object v0, Lcom/evernote/edam/type/Accounting;->LAST_REQUESTED_CHARGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1534
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->lastRequestedCharge:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1535
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1537
    :cond_f
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1538
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetCurrency()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1539
    sget-object v0, Lcom/evernote/edam/type/Accounting;->CURRENCY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1540
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1544
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitPrice()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1545
    sget-object v0, Lcom/evernote/edam/type/Accounting;->UNIT_PRICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1546
    iget v0, p0, Lcom/evernote/edam/type/Accounting;->unitPrice:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1547
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1549
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessId()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1550
    sget-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1551
    iget v0, p0, Lcom/evernote/edam/type/Accounting;->businessId:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1552
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1554
    :cond_12
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 1555
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessName()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1556
    sget-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1557
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1561
    :cond_13
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    if-eqz v0, :cond_14

    .line 1562
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetBusinessRole()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1563
    sget-object v0, Lcom/evernote/edam/type/Accounting;->BUSINESS_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1564
    iget-object v0, p0, Lcom/evernote/edam/type/Accounting;->businessRole:Lcom/evernote/edam/type/BusinessUserRole;

    invoke-virtual {v0}, Lcom/evernote/edam/type/BusinessUserRole;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1565
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1568
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetUnitDiscount()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1569
    sget-object v0, Lcom/evernote/edam/type/Accounting;->UNIT_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1570
    iget v0, p0, Lcom/evernote/edam/type/Accounting;->unitDiscount:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1571
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1573
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/Accounting;->isSetNextChargeDate()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1574
    sget-object v0, Lcom/evernote/edam/type/Accounting;->NEXT_CHARGE_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 1575
    iget-wide v0, p0, Lcom/evernote/edam/type/Accounting;->nextChargeDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 1576
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1578
    :cond_16
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1579
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1580
    return-void
.end method
