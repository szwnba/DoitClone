.class public Lcom/evernote/edam/type/UserAttributes;
.super Ljava/lang/Object;
.source "UserAttributes.java"

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
        "Lcom/evernote/edam/type/UserAttributes;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BUSINESS_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CLIP_FULL_PAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final COMMENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DAILY_EMAIL_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DATE_AGREED_TO_TERMS_OF_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEFAULT_LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEFAULT_LOCATION_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final DEFAULT_LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EDUCATIONAL_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EMAIL_OPT_OUT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final HIDE_SPONSOR_BILLING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCOMING_EMAIL_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_REFERRALS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PARTNER_EMAIL_OPT_IN_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREACTIVATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREFERRED_COUNTRY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREFERRED_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECENT_MAILED_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECOGNITION_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REFERER_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REFERRAL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REFERRAL_PROOF_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_EMAIL_CONFIG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SENT_EMAIL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SENT_EMAIL_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final TAX_EXEMPT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final TWITTER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final TWITTER_USER_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USE_EMAIL_AUTO_FILING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final VIEWED_PROMOTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __CLIPFULLPAGE_ISSET_ID:I = 0xb

.field private static final __DAILYEMAILLIMIT_ISSET_ID:I = 0x8

.field private static final __DATEAGREEDTOTERMSOFSERVICE_ISSET_ID:I = 0x3

.field private static final __DEFAULTLATITUDE_ISSET_ID:I = 0x0

.field private static final __DEFAULTLONGITUDE_ISSET_ID:I = 0x1

.field private static final __EDUCATIONALDISCOUNT_ISSET_ID:I = 0xc

.field private static final __EMAILOPTOUTDATE_ISSET_ID:I = 0x9

.field private static final __HIDESPONSORBILLING_ISSET_ID:I = 0xd

.field private static final __MAXREFERRALS_ISSET_ID:I = 0x4

.field private static final __PARTNEREMAILOPTINDATE_ISSET_ID:I = 0xa

.field private static final __PREACTIVATION_ISSET_ID:I = 0x2

.field private static final __REFERRALCOUNT_ISSET_ID:I = 0x5

.field private static final __SENTEMAILCOUNT_ISSET_ID:I = 0x7

.field private static final __SENTEMAILDATE_ISSET_ID:I = 0x6

.field private static final __TAXEXEMPT_ISSET_ID:I = 0xe

.field private static final __USEEMAILAUTOFILING_ISSET_ID:I = 0xf


# instance fields
.field private __isset_vector:[Z

.field private businessAddress:Ljava/lang/String;

.field private clipFullPage:Z

.field private comments:Ljava/lang/String;

.field private dailyEmailLimit:I

.field private dateAgreedToTermsOfService:J

.field private defaultLatitude:D

.field private defaultLocationName:Ljava/lang/String;

.field private defaultLongitude:D

.field private educationalDiscount:Z

.field private emailOptOutDate:J

.field private groupName:Ljava/lang/String;

.field private hideSponsorBilling:Z

.field private incomingEmailAddress:Ljava/lang/String;

.field private maxReferrals:I

.field private partnerEmailOptInDate:J

.field private preactivation:Z

.field private preferredCountry:Ljava/lang/String;

.field private preferredLanguage:Ljava/lang/String;

.field private recentMailedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recognitionLanguage:Ljava/lang/String;

.field private refererCode:Ljava/lang/String;

.field private referralCount:I

.field private referralProof:Ljava/lang/String;

.field private reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

.field private sentEmailCount:I

.field private sentEmailDate:J

.field private taxExempt:Z

.field private twitterId:Ljava/lang/String;

.field private twitterUserName:Ljava/lang/String;

.field private useEmailAutoFiling:Z

.field private viewedPromotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/16 v4, 0xb

    .line 198
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "UserAttributes"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 200
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "defaultLocationName"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LOCATION_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 201
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "defaultLatitude"

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 202
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "defaultLongitude"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 203
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "preactivation"

    invoke-direct {v0, v1, v5, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->PREACTIVATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 204
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "viewedPromotions"

    const/16 v2, 0xf

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->VIEWED_PROMOTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 205
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "incomingEmailAddress"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->INCOMING_EMAIL_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 206
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recentMailedAddresses"

    const/16 v2, 0xf

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->RECENT_MAILED_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 207
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "comments"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->COMMENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 208
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "dateAgreedToTermsOfService"

    invoke-direct {v0, v1, v7, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DATE_AGREED_TO_TERMS_OF_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 209
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxReferrals"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->MAX_REFERRALS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 210
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "referralCount"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERRAL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 211
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "refererCode"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERER_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 212
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sentEmailDate"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v7, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->SENT_EMAIL_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 213
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sentEmailCount"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->SENT_EMAIL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 214
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "dailyEmailLimit"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->DAILY_EMAIL_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 215
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "emailOptOutDate"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v7, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->EMAIL_OPT_OUT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 216
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "partnerEmailOptInDate"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v7, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->PARTNER_EMAIL_OPT_IN_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 217
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "preferredLanguage"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->PREFERRED_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 218
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "preferredCountry"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->PREFERRED_COUNTRY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 219
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "clipFullPage"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->CLIP_FULL_PAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 220
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "twitterUserName"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->TWITTER_USER_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 221
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "twitterId"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->TWITTER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 222
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "groupName"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 223
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recognitionLanguage"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->RECOGNITION_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 224
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "referralProof"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->REFERRAL_PROOF_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 225
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "educationalDiscount"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->EDUCATIONAL_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 226
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "businessAddress"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->BUSINESS_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 227
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "hideSponsorBilling"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->HIDE_SPONSOR_BILLING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 228
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "taxExempt"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->TAX_EXEMPT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 229
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "useEmailAutoFiling"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->USE_EMAIL_AUTO_FILING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 230
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderEmailConfig"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/UserAttributes;->REMINDER_EMAIL_CONFIG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/16 v0, 0x10

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    .line 285
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/UserAttributes;)V
    .locals 8
    .param p1, "other"    # Lcom/evernote/edam/type/UserAttributes;

    .prologue
    const/4 v7, 0x0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/16 v4, 0x10

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    .line 291
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    iget-object v5, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    iget-object v6, p1, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    .line 295
    :cond_0
    iget-wide v4, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    iput-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    .line 296
    iget-wide v4, p1, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    iput-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    .line 297
    iget-boolean v4, p1, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    iput-boolean v4, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    .line 298
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v1, "__this__viewedPromotions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .local v3, "other_element":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v3    # "other_element":Ljava/lang/String;
    :cond_1
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    .line 305
    .end local v1    # "__this__viewedPromotions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    .line 308
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "__this__recentMailedAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 311
    .restart local v3    # "other_element":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    .end local v3    # "other_element":Ljava/lang/String;
    :cond_4
    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    .line 315
    .end local v0    # "__this__recentMailedAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 316
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    .line 318
    :cond_6
    iget-wide v4, p1, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    iput-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    .line 319
    iget v4, p1, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    iput v4, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    .line 320
    iget v4, p1, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    iput v4, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    .line 321
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 322
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    .line 324
    :cond_7
    iget-wide v4, p1, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    iput-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    .line 325
    iget v4, p1, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    iput v4, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    .line 326
    iget v4, p1, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    iput v4, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    .line 327
    iget-wide v4, p1, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    iput-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    .line 328
    iget-wide v4, p1, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    iput-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    .line 329
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 330
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    .line 332
    :cond_8
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 333
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    .line 335
    :cond_9
    iget-boolean v4, p1, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    iput-boolean v4, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    .line 336
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 337
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    .line 339
    :cond_a
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 340
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    .line 342
    :cond_b
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 343
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    .line 345
    :cond_c
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 346
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    .line 348
    :cond_d
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 349
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    .line 351
    :cond_e
    iget-boolean v4, p1, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    iput-boolean v4, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    .line 352
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 353
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    .line 355
    :cond_f
    iget-boolean v4, p1, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    iput-boolean v4, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    .line 356
    iget-boolean v4, p1, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    iput-boolean v4, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    .line 357
    iget-boolean v4, p1, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    iput-boolean v4, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    .line 358
    invoke-virtual {p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 359
    iget-object v4, p1, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    iput-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    .line 361
    :cond_10
    return-void
.end method


# virtual methods
.method public addToRecentMailedAddresses(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method public addToViewedPromotions(Ljava/lang/String;)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 368
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    .line 369
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLatitudeIsSet(Z)V

    .line 370
    iput-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    .line 371
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLongitudeIsSet(Z)V

    .line 372
    iput-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    .line 373
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setPreactivationIsSet(Z)V

    .line 374
    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    .line 375
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    .line 376
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    .line 378
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    .line 379
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setDateAgreedToTermsOfServiceIsSet(Z)V

    .line 380
    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    .line 381
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setMaxReferralsIsSet(Z)V

    .line 382
    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    .line 383
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setReferralCountIsSet(Z)V

    .line 384
    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    .line 385
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    .line 386
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailDateIsSet(Z)V

    .line 387
    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    .line 388
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailCountIsSet(Z)V

    .line 389
    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    .line 390
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setDailyEmailLimitIsSet(Z)V

    .line 391
    iput v0, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    .line 392
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setEmailOptOutDateIsSet(Z)V

    .line 393
    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    .line 394
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setPartnerEmailOptInDateIsSet(Z)V

    .line 395
    iput-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    .line 396
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    .line 397
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    .line 398
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setClipFullPageIsSet(Z)V

    .line 399
    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    .line 400
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    .line 401
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    .line 402
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    .line 403
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    .line 404
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    .line 405
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setEducationalDiscountIsSet(Z)V

    .line 406
    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    .line 407
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    .line 408
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setHideSponsorBillingIsSet(Z)V

    .line 409
    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    .line 410
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setTaxExemptIsSet(Z)V

    .line 411
    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    .line 412
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setUseEmailAutoFilingIsSet(Z)V

    .line 413
    iput-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    .line 414
    iput-object v1, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    .line 415
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/UserAttributes;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/type/UserAttributes;

    .prologue
    .line 1453
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1454
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

    .line 1739
    :cond_0
    :goto_0
    return v0

    .line 1457
    :cond_1
    const/4 v0, 0x0

    .line 1458
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 1460
    .local v1, "typedOther":Lcom/evernote/edam/type/UserAttributes;
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1461
    if-nez v0, :cond_0

    .line 1464
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1465
    if-nez v0, :cond_0

    .line 1469
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1470
    if-nez v0, :cond_0

    .line 1473
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    iget-wide v4, v1, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 1474
    if-nez v0, :cond_0

    .line 1478
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1479
    if-nez v0, :cond_0

    .line 1482
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    iget-wide v4, v1, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 1483
    if-nez v0, :cond_0

    .line 1487
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1488
    if-nez v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1492
    if-nez v0, :cond_0

    .line 1496
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1497
    if-nez v0, :cond_0

    .line 1500
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1501
    if-nez v0, :cond_0

    .line 1505
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1506
    if-nez v0, :cond_0

    .line 1509
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1510
    if-nez v0, :cond_0

    .line 1514
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1515
    if-nez v0, :cond_0

    .line 1518
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1519
    if-nez v0, :cond_0

    .line 1523
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1524
    if-nez v0, :cond_0

    .line 1527
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1528
    if-nez v0, :cond_0

    .line 1532
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1533
    if-nez v0, :cond_0

    .line 1536
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    iget-wide v4, v1, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1537
    if-nez v0, :cond_0

    .line 1541
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1542
    if-nez v0, :cond_0

    .line 1545
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    iget v3, v1, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1546
    if-nez v0, :cond_0

    .line 1550
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1551
    if-nez v0, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    iget v3, v1, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1555
    if-nez v0, :cond_0

    .line 1559
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1560
    if-nez v0, :cond_0

    .line 1563
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1564
    if-nez v0, :cond_0

    .line 1568
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1569
    if-nez v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    iget-wide v4, v1, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1573
    if-nez v0, :cond_0

    .line 1577
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1578
    if-nez v0, :cond_0

    .line 1581
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    iget v3, v1, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1582
    if-nez v0, :cond_0

    .line 1586
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1587
    if-nez v0, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    iget v3, v1, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 1591
    if-nez v0, :cond_0

    .line 1595
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1596
    if-nez v0, :cond_0

    .line 1599
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    iget-wide v4, v1, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1600
    if-nez v0, :cond_0

    .line 1604
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1605
    if-nez v0, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    iget-wide v4, v1, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 1609
    if-nez v0, :cond_0

    .line 1613
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1614
    if-nez v0, :cond_0

    .line 1617
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1618
    if-nez v0, :cond_0

    .line 1622
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1623
    if-nez v0, :cond_0

    .line 1626
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1627
    if-nez v0, :cond_0

    .line 1631
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1632
    if-nez v0, :cond_0

    .line 1635
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1636
    if-nez v0, :cond_0

    .line 1640
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1641
    if-nez v0, :cond_0

    .line 1644
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1645
    if-nez v0, :cond_0

    .line 1649
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1650
    if-nez v0, :cond_0

    .line 1653
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1654
    if-nez v0, :cond_0

    .line 1658
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1659
    if-nez v0, :cond_0

    .line 1662
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1663
    if-nez v0, :cond_0

    .line 1667
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1668
    if-nez v0, :cond_0

    .line 1671
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1672
    if-nez v0, :cond_0

    .line 1676
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1677
    if-nez v0, :cond_0

    .line 1680
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1681
    if-nez v0, :cond_0

    .line 1685
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1686
    if-nez v0, :cond_0

    .line 1689
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1690
    if-nez v0, :cond_0

    .line 1694
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1695
    if-nez v0, :cond_0

    .line 1698
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1699
    if-nez v0, :cond_0

    .line 1703
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1704
    if-nez v0, :cond_0

    .line 1707
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1708
    if-nez v0, :cond_0

    .line 1712
    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1713
    if-nez v0, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1717
    if-nez v0, :cond_0

    .line 1721
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1722
    if-nez v0, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1726
    if-nez v0, :cond_0

    .line 1730
    :cond_1f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1731
    if-nez v0, :cond_0

    .line 1734
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    iget-object v3, v1, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1735
    if-nez v0, :cond_0

    .line 1739
    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, Lcom/evernote/edam/type/UserAttributes;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->compareTo(Lcom/evernote/edam/type/UserAttributes;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/UserAttributes;
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/evernote/edam/type/UserAttributes;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/UserAttributes;-><init>(Lcom/evernote/edam/type/UserAttributes;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->deepCopy()Lcom/evernote/edam/type/UserAttributes;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/UserAttributes;)Z
    .locals 68
    .param p1, "that"    # Lcom/evernote/edam/type/UserAttributes;

    .prologue
    .line 1162
    if-nez p1, :cond_0

    .line 1163
    const/16 v64, 0x0

    .line 1444
    :goto_0
    return v64

    .line 1165
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v39

    .line 1166
    .local v39, "this_present_defaultLocationName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v8

    .line 1167
    .local v8, "that_present_defaultLocationName":Z
    if-nez v39, :cond_1

    if-eqz v8, :cond_4

    .line 1168
    :cond_1
    if-eqz v39, :cond_2

    if-nez v8, :cond_3

    .line 1169
    :cond_2
    const/16 v64, 0x0

    goto :goto_0

    .line 1170
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_4

    .line 1171
    const/16 v64, 0x0

    goto :goto_0

    .line 1174
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v38

    .line 1175
    .local v38, "this_present_defaultLatitude":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v7

    .line 1176
    .local v7, "that_present_defaultLatitude":Z
    if-nez v38, :cond_5

    if-eqz v7, :cond_8

    .line 1177
    :cond_5
    if-eqz v38, :cond_6

    if-nez v7, :cond_7

    .line 1178
    :cond_6
    const/16 v64, 0x0

    goto :goto_0

    .line 1179
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    move-wide/from16 v64, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    move-wide/from16 v66, v0

    cmpl-double v64, v64, v66

    if-eqz v64, :cond_8

    .line 1180
    const/16 v64, 0x0

    goto :goto_0

    .line 1183
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v40

    .line 1184
    .local v40, "this_present_defaultLongitude":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v9

    .line 1185
    .local v9, "that_present_defaultLongitude":Z
    if-nez v40, :cond_9

    if-eqz v9, :cond_c

    .line 1186
    :cond_9
    if-eqz v40, :cond_a

    if-nez v9, :cond_b

    .line 1187
    :cond_a
    const/16 v64, 0x0

    goto :goto_0

    .line 1188
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    move-wide/from16 v64, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    move-wide/from16 v66, v0

    cmpl-double v64, v64, v66

    if-eqz v64, :cond_c

    .line 1189
    const/16 v64, 0x0

    goto :goto_0

    .line 1192
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v48

    .line 1193
    .local v48, "this_present_preactivation":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v17

    .line 1194
    .local v17, "that_present_preactivation":Z
    if-nez v48, :cond_d

    if-eqz v17, :cond_10

    .line 1195
    :cond_d
    if-eqz v48, :cond_e

    if-nez v17, :cond_f

    .line 1196
    :cond_e
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1197
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_10

    .line 1198
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1201
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v63

    .line 1202
    .local v63, "this_present_viewedPromotions":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v32

    .line 1203
    .local v32, "that_present_viewedPromotions":Z
    if-nez v63, :cond_11

    if-eqz v32, :cond_14

    .line 1204
    :cond_11
    if-eqz v63, :cond_12

    if-nez v32, :cond_13

    .line 1205
    :cond_12
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1206
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_14

    .line 1207
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1210
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v45

    .line 1211
    .local v45, "this_present_incomingEmailAddress":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v14

    .line 1212
    .local v14, "that_present_incomingEmailAddress":Z
    if-nez v45, :cond_15

    if-eqz v14, :cond_18

    .line 1213
    :cond_15
    if-eqz v45, :cond_16

    if-nez v14, :cond_17

    .line 1214
    :cond_16
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1215
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_18

    .line 1216
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1219
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v51

    .line 1220
    .local v51, "this_present_recentMailedAddresses":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v20

    .line 1221
    .local v20, "that_present_recentMailedAddresses":Z
    if-nez v51, :cond_19

    if-eqz v20, :cond_1c

    .line 1222
    :cond_19
    if-eqz v51, :cond_1a

    if-nez v20, :cond_1b

    .line 1223
    :cond_1a
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1224
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_1c

    .line 1225
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1228
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v35

    .line 1229
    .local v35, "this_present_comments":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v4

    .line 1230
    .local v4, "that_present_comments":Z
    if-nez v35, :cond_1d

    if-eqz v4, :cond_20

    .line 1231
    :cond_1d
    if-eqz v35, :cond_1e

    if-nez v4, :cond_1f

    .line 1232
    :cond_1e
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1233
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_20

    .line 1234
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1237
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v37

    .line 1238
    .local v37, "this_present_dateAgreedToTermsOfService":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v6

    .line 1239
    .local v6, "that_present_dateAgreedToTermsOfService":Z
    if-nez v37, :cond_21

    if-eqz v6, :cond_24

    .line 1240
    :cond_21
    if-eqz v37, :cond_22

    if-nez v6, :cond_23

    .line 1241
    :cond_22
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1242
    :cond_23
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    move-wide/from16 v66, v0

    cmp-long v64, v64, v66

    if-eqz v64, :cond_24

    .line 1243
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1246
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v46

    .line 1247
    .local v46, "this_present_maxReferrals":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v15

    .line 1248
    .local v15, "that_present_maxReferrals":Z
    if-nez v46, :cond_25

    if-eqz v15, :cond_28

    .line 1249
    :cond_25
    if-eqz v46, :cond_26

    if-nez v15, :cond_27

    .line 1250
    :cond_26
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1251
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_28

    .line 1252
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1255
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v54

    .line 1256
    .local v54, "this_present_referralCount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v23

    .line 1257
    .local v23, "that_present_referralCount":Z
    if-nez v54, :cond_29

    if-eqz v23, :cond_2c

    .line 1258
    :cond_29
    if-eqz v54, :cond_2a

    if-nez v23, :cond_2b

    .line 1259
    :cond_2a
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1260
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_2c

    .line 1261
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1264
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v53

    .line 1265
    .local v53, "this_present_refererCode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v22

    .line 1266
    .local v22, "that_present_refererCode":Z
    if-nez v53, :cond_2d

    if-eqz v22, :cond_30

    .line 1267
    :cond_2d
    if-eqz v53, :cond_2e

    if-nez v22, :cond_2f

    .line 1268
    :cond_2e
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1269
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_30

    .line 1270
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1273
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v58

    .line 1274
    .local v58, "this_present_sentEmailDate":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v27

    .line 1275
    .local v27, "that_present_sentEmailDate":Z
    if-nez v58, :cond_31

    if-eqz v27, :cond_34

    .line 1276
    :cond_31
    if-eqz v58, :cond_32

    if-nez v27, :cond_33

    .line 1277
    :cond_32
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1278
    :cond_33
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    move-wide/from16 v66, v0

    cmp-long v64, v64, v66

    if-eqz v64, :cond_34

    .line 1279
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1282
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v57

    .line 1283
    .local v57, "this_present_sentEmailCount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v26

    .line 1284
    .local v26, "that_present_sentEmailCount":Z
    if-nez v57, :cond_35

    if-eqz v26, :cond_38

    .line 1285
    :cond_35
    if-eqz v57, :cond_36

    if-nez v26, :cond_37

    .line 1286
    :cond_36
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1287
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_38

    .line 1288
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1291
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v36

    .line 1292
    .local v36, "this_present_dailyEmailLimit":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v5

    .line 1293
    .local v5, "that_present_dailyEmailLimit":Z
    if-nez v36, :cond_39

    if-eqz v5, :cond_3c

    .line 1294
    :cond_39
    if-eqz v36, :cond_3a

    if-nez v5, :cond_3b

    .line 1295
    :cond_3a
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1296
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_3c

    .line 1297
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1300
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v42

    .line 1301
    .local v42, "this_present_emailOptOutDate":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v11

    .line 1302
    .local v11, "that_present_emailOptOutDate":Z
    if-nez v42, :cond_3d

    if-eqz v11, :cond_40

    .line 1303
    :cond_3d
    if-eqz v42, :cond_3e

    if-nez v11, :cond_3f

    .line 1304
    :cond_3e
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1305
    :cond_3f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    move-wide/from16 v66, v0

    cmp-long v64, v64, v66

    if-eqz v64, :cond_40

    .line 1306
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1309
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v47

    .line 1310
    .local v47, "this_present_partnerEmailOptInDate":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v16

    .line 1311
    .local v16, "that_present_partnerEmailOptInDate":Z
    if-nez v47, :cond_41

    if-eqz v16, :cond_44

    .line 1312
    :cond_41
    if-eqz v47, :cond_42

    if-nez v16, :cond_43

    .line 1313
    :cond_42
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1314
    :cond_43
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    move-wide/from16 v66, v0

    cmp-long v64, v64, v66

    if-eqz v64, :cond_44

    .line 1315
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1318
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v50

    .line 1319
    .local v50, "this_present_preferredLanguage":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v19

    .line 1320
    .local v19, "that_present_preferredLanguage":Z
    if-nez v50, :cond_45

    if-eqz v19, :cond_48

    .line 1321
    :cond_45
    if-eqz v50, :cond_46

    if-nez v19, :cond_47

    .line 1322
    :cond_46
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1323
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_48

    .line 1324
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1327
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v49

    .line 1328
    .local v49, "this_present_preferredCountry":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v18

    .line 1329
    .local v18, "that_present_preferredCountry":Z
    if-nez v49, :cond_49

    if-eqz v18, :cond_4c

    .line 1330
    :cond_49
    if-eqz v49, :cond_4a

    if-nez v18, :cond_4b

    .line 1331
    :cond_4a
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1332
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_4c

    .line 1333
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1336
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v34

    .line 1337
    .local v34, "this_present_clipFullPage":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v3

    .line 1338
    .local v3, "that_present_clipFullPage":Z
    if-nez v34, :cond_4d

    if-eqz v3, :cond_50

    .line 1339
    :cond_4d
    if-eqz v34, :cond_4e

    if-nez v3, :cond_4f

    .line 1340
    :cond_4e
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1341
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_50

    .line 1342
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1345
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v61

    .line 1346
    .local v61, "this_present_twitterUserName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v30

    .line 1347
    .local v30, "that_present_twitterUserName":Z
    if-nez v61, :cond_51

    if-eqz v30, :cond_54

    .line 1348
    :cond_51
    if-eqz v61, :cond_52

    if-nez v30, :cond_53

    .line 1349
    :cond_52
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1350
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_54

    .line 1351
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1354
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v60

    .line 1355
    .local v60, "this_present_twitterId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v29

    .line 1356
    .local v29, "that_present_twitterId":Z
    if-nez v60, :cond_55

    if-eqz v29, :cond_58

    .line 1357
    :cond_55
    if-eqz v60, :cond_56

    if-nez v29, :cond_57

    .line 1358
    :cond_56
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1359
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_58

    .line 1360
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1363
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v43

    .line 1364
    .local v43, "this_present_groupName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v12

    .line 1365
    .local v12, "that_present_groupName":Z
    if-nez v43, :cond_59

    if-eqz v12, :cond_5c

    .line 1366
    :cond_59
    if-eqz v43, :cond_5a

    if-nez v12, :cond_5b

    .line 1367
    :cond_5a
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1368
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_5c

    .line 1369
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1372
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v52

    .line 1373
    .local v52, "this_present_recognitionLanguage":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v21

    .line 1374
    .local v21, "that_present_recognitionLanguage":Z
    if-nez v52, :cond_5d

    if-eqz v21, :cond_60

    .line 1375
    :cond_5d
    if-eqz v52, :cond_5e

    if-nez v21, :cond_5f

    .line 1376
    :cond_5e
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1377
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_60

    .line 1378
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1381
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v55

    .line 1382
    .local v55, "this_present_referralProof":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v24

    .line 1383
    .local v24, "that_present_referralProof":Z
    if-nez v55, :cond_61

    if-eqz v24, :cond_64

    .line 1384
    :cond_61
    if-eqz v55, :cond_62

    if-nez v24, :cond_63

    .line 1385
    :cond_62
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1386
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_64

    .line 1387
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1390
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v41

    .line 1391
    .local v41, "this_present_educationalDiscount":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v10

    .line 1392
    .local v10, "that_present_educationalDiscount":Z
    if-nez v41, :cond_65

    if-eqz v10, :cond_68

    .line 1393
    :cond_65
    if-eqz v41, :cond_66

    if-nez v10, :cond_67

    .line 1394
    :cond_66
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1395
    :cond_67
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_68

    .line 1396
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1399
    :cond_68
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v33

    .line 1400
    .local v33, "this_present_businessAddress":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v2

    .line 1401
    .local v2, "that_present_businessAddress":Z
    if-nez v33, :cond_69

    if-eqz v2, :cond_6c

    .line 1402
    :cond_69
    if-eqz v33, :cond_6a

    if-nez v2, :cond_6b

    .line 1403
    :cond_6a
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1404
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_6c

    .line 1405
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1408
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v44

    .line 1409
    .local v44, "this_present_hideSponsorBilling":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v13

    .line 1410
    .local v13, "that_present_hideSponsorBilling":Z
    if-nez v44, :cond_6d

    if-eqz v13, :cond_70

    .line 1411
    :cond_6d
    if-eqz v44, :cond_6e

    if-nez v13, :cond_6f

    .line 1412
    :cond_6e
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1413
    :cond_6f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_70

    .line 1414
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1417
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v59

    .line 1418
    .local v59, "this_present_taxExempt":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v28

    .line 1419
    .local v28, "that_present_taxExempt":Z
    if-nez v59, :cond_71

    if-eqz v28, :cond_74

    .line 1420
    :cond_71
    if-eqz v59, :cond_72

    if-nez v28, :cond_73

    .line 1421
    :cond_72
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1422
    :cond_73
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_74

    .line 1423
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1426
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v62

    .line 1427
    .local v62, "this_present_useEmailAutoFiling":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v31

    .line 1428
    .local v31, "that_present_useEmailAutoFiling":Z
    if-nez v62, :cond_75

    if-eqz v31, :cond_78

    .line 1429
    :cond_75
    if-eqz v62, :cond_76

    if-nez v31, :cond_77

    .line 1430
    :cond_76
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1431
    :cond_77
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    move/from16 v65, v0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_78

    .line 1432
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1435
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v56

    .line 1436
    .local v56, "this_present_reminderEmailConfig":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v25

    .line 1437
    .local v25, "that_present_reminderEmailConfig":Z
    if-nez v56, :cond_79

    if-eqz v25, :cond_7c

    .line 1438
    :cond_79
    if-eqz v56, :cond_7a

    if-nez v25, :cond_7b

    .line 1439
    :cond_7a
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1440
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Lcom/evernote/edam/type/ReminderEmailConfig;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_7c

    .line 1441
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 1444
    :cond_7c
    const/16 v64, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1154
    if-nez p1, :cond_1

    .line 1158
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 1156
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/UserAttributes;

    if-eqz v1, :cond_0

    .line 1157
    check-cast p1, Lcom/evernote/edam/type/UserAttributes;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/UserAttributes;->equals(Lcom/evernote/edam/type/UserAttributes;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBusinessAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyEmailLimit()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    return v0
.end method

.method public getDateAgreedToTermsOfService()J
    .locals 2

    .prologue
    .line 629
    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    return-wide v0
.end method

.method public getDefaultLatitude()D
    .locals 2

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    return-wide v0
.end method

.method public getDefaultLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLongitude()D
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    return-wide v0
.end method

.method public getEmailOptOutDate()J
    .locals 2

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxReferrals()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    return v0
.end method

.method public getPartnerEmailOptInDate()J
    .locals 2

    .prologue
    .line 806
    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    return-wide v0
.end method

.method public getPreferredCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentMailedAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getRecentMailedAddressesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecentMailedAddressesSize()I
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRecognitionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReferralCount()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    return v0
.end method

.method public getReferralProof()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    return-object v0
.end method

.method public getReminderEmailConfig()Lcom/evernote/edam/type/ReminderEmailConfig;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    return-object v0
.end method

.method public getSentEmailCount()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    return v0
.end method

.method public getSentEmailDate()J
    .locals 2

    .prologue
    .line 718
    iget-wide v0, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    return-wide v0
.end method

.method public getTwitterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewedPromotions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    return-object v0
.end method

.method public getViewedPromotionsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewedPromotionsSize()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1449
    const/4 v0, 0x0

    return v0
.end method

.method public isClipFullPage()Z
    .locals 1

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    return v0
.end method

.method public isEducationalDiscount()Z
    .locals 1

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    return v0
.end method

.method public isHideSponsorBilling()Z
    .locals 1

    .prologue
    .line 1056
    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    return v0
.end method

.method public isPreactivation()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    return v0
.end method

.method public isSetBusinessAddress()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetClipFullPage()Z
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetComments()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDailyEmailLimit()Z
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetDateAgreedToTermsOfService()Z
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetDefaultLatitude()Z
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetDefaultLocationName()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDefaultLongitude()Z
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetEducationalDiscount()Z
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetEmailOptOutDate()Z
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetGroupName()Z
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetHideSponsorBilling()Z
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetIncomingEmailAddress()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMaxReferrals()Z
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPartnerEmailOptInDate()Z
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPreactivation()Z
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPreferredCountry()Z
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPreferredLanguage()Z
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRecentMailedAddresses()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRecognitionLanguage()Z
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRefererCode()Z
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetReferralCount()Z
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetReferralProof()Z
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetReminderEmailConfig()Z
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSentEmailCount()Z
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetSentEmailDate()Z
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetTaxExempt()Z
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xe

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetTwitterId()Z
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTwitterUserName()Z
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUseEmailAutoFiling()Z
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xf

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetViewedPromotions()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaxExempt()Z
    .locals 1

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    return v0
.end method

.method public isUseEmailAutoFiling()Z
    .locals 1

    .prologue
    .line 1100
    iget-boolean v0, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 10
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1744
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 1747
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v6

    .line 1748
    .local v6, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v7, :cond_0

    .line 2010
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 2011
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->validate()V

    .line 2012
    return-void

    .line 1751
    :cond_0
    iget-short v7, v6, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v7, :pswitch_data_0

    .line 2006
    :pswitch_0
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 2008
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1753
    :pswitch_1
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_1

    .line 1754
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    goto :goto_1

    .line 1756
    :cond_1
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1760
    :pswitch_2
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 1761
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    .line 1762
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLatitudeIsSet(Z)V

    goto :goto_1

    .line 1764
    :cond_2
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1768
    :pswitch_3
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 1769
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    .line 1770
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLongitudeIsSet(Z)V

    goto :goto_1

    .line 1772
    :cond_3
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1776
    :pswitch_4
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1777
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    .line 1778
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setPreactivationIsSet(Z)V

    goto :goto_1

    .line 1780
    :cond_4
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1784
    :pswitch_5
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xf

    if-ne v7, v8, :cond_6

    .line 1786
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v4

    .line 1787
    .local v4, "_list0":Lcom/evernote/thrift/protocol/TList;
    new-instance v7, Ljava/util/ArrayList;

    iget v8, v4, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    .line 1788
    const/4 v2, 0x0

    .local v2, "_i1":I
    :goto_2
    iget v7, v4, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v2, v7, :cond_5

    .line 1791
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1792
    .local v0, "_elem2":Ljava/lang/String;
    iget-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1788
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1794
    .end local v0    # "_elem2":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 1797
    .end local v2    # "_i1":I
    .end local v4    # "_list0":Lcom/evernote/thrift/protocol/TList;
    :cond_6
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1801
    :pswitch_6
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_7

    .line 1802
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 1804
    :cond_7
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1808
    :pswitch_7
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xf

    if-ne v7, v8, :cond_9

    .line 1810
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListBegin()Lcom/evernote/thrift/protocol/TList;

    move-result-object v5

    .line 1811
    .local v5, "_list3":Lcom/evernote/thrift/protocol/TList;
    new-instance v7, Ljava/util/ArrayList;

    iget v8, v5, Lcom/evernote/thrift/protocol/TList;->size:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    .line 1812
    const/4 v3, 0x0

    .local v3, "_i4":I
    :goto_3
    iget v7, v5, Lcom/evernote/thrift/protocol/TList;->size:I

    if-ge v3, v7, :cond_8

    .line 1815
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1816
    .local v1, "_elem5":Ljava/lang/String;
    iget-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1812
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1818
    .end local v1    # "_elem5":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_1

    .line 1821
    .end local v3    # "_i4":I
    .end local v5    # "_list3":Lcom/evernote/thrift/protocol/TList;
    :cond_9
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1825
    :pswitch_8
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    .line 1826
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    goto/16 :goto_1

    .line 1828
    :cond_a
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1832
    :pswitch_9
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xa

    if-ne v7, v8, :cond_b

    .line 1833
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    .line 1834
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setDateAgreedToTermsOfServiceIsSet(Z)V

    goto/16 :goto_1

    .line 1836
    :cond_b
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1840
    :pswitch_a
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0x8

    if-ne v7, v8, :cond_c

    .line 1841
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v7

    iput v7, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    .line 1842
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setMaxReferralsIsSet(Z)V

    goto/16 :goto_1

    .line 1844
    :cond_c
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1848
    :pswitch_b
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0x8

    if-ne v7, v8, :cond_d

    .line 1849
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v7

    iput v7, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    .line 1850
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setReferralCountIsSet(Z)V

    goto/16 :goto_1

    .line 1852
    :cond_d
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1856
    :pswitch_c
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_e

    .line 1857
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    goto/16 :goto_1

    .line 1859
    :cond_e
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1863
    :pswitch_d
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xa

    if-ne v7, v8, :cond_f

    .line 1864
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    .line 1865
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailDateIsSet(Z)V

    goto/16 :goto_1

    .line 1867
    :cond_f
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1871
    :pswitch_e
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0x8

    if-ne v7, v8, :cond_10

    .line 1872
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v7

    iput v7, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    .line 1873
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailCountIsSet(Z)V

    goto/16 :goto_1

    .line 1875
    :cond_10
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1879
    :pswitch_f
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0x8

    if-ne v7, v8, :cond_11

    .line 1880
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v7

    iput v7, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    .line 1881
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setDailyEmailLimitIsSet(Z)V

    goto/16 :goto_1

    .line 1883
    :cond_11
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1887
    :pswitch_10
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xa

    if-ne v7, v8, :cond_12

    .line 1888
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    .line 1889
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setEmailOptOutDateIsSet(Z)V

    goto/16 :goto_1

    .line 1891
    :cond_12
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1895
    :pswitch_11
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xa

    if-ne v7, v8, :cond_13

    .line 1896
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    .line 1897
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setPartnerEmailOptInDateIsSet(Z)V

    goto/16 :goto_1

    .line 1899
    :cond_13
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1903
    :pswitch_12
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_14

    .line 1904
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1906
    :cond_14
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1910
    :pswitch_13
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_15

    .line 1911
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    goto/16 :goto_1

    .line 1913
    :cond_15
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1917
    :pswitch_14
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    .line 1918
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    .line 1919
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setClipFullPageIsSet(Z)V

    goto/16 :goto_1

    .line 1921
    :cond_16
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1925
    :pswitch_15
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_17

    .line 1926
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1928
    :cond_17
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1932
    :pswitch_16
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_18

    .line 1933
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1935
    :cond_18
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1939
    :pswitch_17
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_19

    .line 1940
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1942
    :cond_19
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1946
    :pswitch_18
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_1a

    .line 1947
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1949
    :cond_1a
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1953
    :pswitch_19
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_1b

    .line 1954
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    goto/16 :goto_1

    .line 1956
    :cond_1b
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1960
    :pswitch_1a
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1c

    .line 1961
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    .line 1962
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setEducationalDiscountIsSet(Z)V

    goto/16 :goto_1

    .line 1964
    :cond_1c
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1968
    :pswitch_1b
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0xb

    if-ne v7, v8, :cond_1d

    .line 1969
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 1971
    :cond_1d
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1975
    :pswitch_1c
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1e

    .line 1976
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    .line 1977
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setHideSponsorBillingIsSet(Z)V

    goto/16 :goto_1

    .line 1979
    :cond_1e
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1983
    :pswitch_1d
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    .line 1984
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    .line 1985
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setTaxExemptIsSet(Z)V

    goto/16 :goto_1

    .line 1987
    :cond_1f
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1991
    :pswitch_1e
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_20

    .line 1992
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    .line 1993
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/evernote/edam/type/UserAttributes;->setUseEmailAutoFilingIsSet(Z)V

    goto/16 :goto_1

    .line 1995
    :cond_20
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1999
    :pswitch_1f
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v8, 0x8

    if-ne v7, v8, :cond_21

    .line 2000
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v7

    invoke-static {v7}, Lcom/evernote/edam/type/ReminderEmailConfig;->findByValue(I)Lcom/evernote/edam/type/ReminderEmailConfig;

    move-result-object v7

    iput-object v7, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    goto/16 :goto_1

    .line 2002
    :cond_21
    iget-byte v7, v6, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v7}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 1751
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public setBusinessAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessAddress"    # Ljava/lang/String;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    .line 1038
    return-void
.end method

.method public setBusinessAddressIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1050
    if-nez p1, :cond_0

    .line 1051
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    .line 1053
    :cond_0
    return-void
.end method

.method public setClipFullPage(Z)V
    .locals 1
    .param p1, "clipFullPage"    # Z

    .prologue
    .line 878
    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    .line 879
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setClipFullPageIsSet(Z)V

    .line 880
    return-void
.end method

.method public setClipFullPageIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 892
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xb

    aput-boolean p1, v0, v1

    .line 893
    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0
    .param p1, "comments"    # Ljava/lang/String;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public setCommentsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    .line 626
    :cond_0
    return-void
.end method

.method public setDailyEmailLimit(I)V
    .locals 1
    .param p1, "dailyEmailLimit"    # I

    .prologue
    .line 766
    iput p1, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    .line 767
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setDailyEmailLimitIsSet(Z)V

    .line 768
    return-void
.end method

.method public setDailyEmailLimitIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 780
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0x8

    aput-boolean p1, v0, v1

    .line 781
    return-void
.end method

.method public setDateAgreedToTermsOfService(J)V
    .locals 1
    .param p1, "dateAgreedToTermsOfService"    # J

    .prologue
    .line 633
    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setDateAgreedToTermsOfServiceIsSet(Z)V

    .line 635
    return-void
.end method

.method public setDateAgreedToTermsOfServiceIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 647
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 648
    return-void
.end method

.method public setDefaultLatitude(D)V
    .locals 1
    .param p1, "defaultLatitude"    # D

    .prologue
    .line 445
    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLatitudeIsSet(Z)V

    .line 447
    return-void
.end method

.method public setDefaultLatitudeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 459
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 460
    return-void
.end method

.method public setDefaultLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultLocationName"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setDefaultLocationNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    .line 438
    :cond_0
    return-void
.end method

.method public setDefaultLongitude(D)V
    .locals 1
    .param p1, "defaultLongitude"    # D

    .prologue
    .line 467
    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setDefaultLongitudeIsSet(Z)V

    .line 469
    return-void
.end method

.method public setDefaultLongitudeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 481
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 482
    return-void
.end method

.method public setEducationalDiscount(Z)V
    .locals 1
    .param p1, "educationalDiscount"    # Z

    .prologue
    .line 1015
    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    .line 1016
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setEducationalDiscountIsSet(Z)V

    .line 1017
    return-void
.end method

.method public setEducationalDiscountIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xc

    aput-boolean p1, v0, v1

    .line 1030
    return-void
.end method

.method public setEmailOptOutDate(J)V
    .locals 1
    .param p1, "emailOptOutDate"    # J

    .prologue
    .line 788
    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    .line 789
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setEmailOptOutDateIsSet(Z)V

    .line 790
    return-void
.end method

.method public setEmailOptOutDateIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 802
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0x9

    aput-boolean p1, v0, v1

    .line 803
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 946
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    .line 947
    return-void
.end method

.method public setGroupNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 959
    if-nez p1, :cond_0

    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    .line 962
    :cond_0
    return-void
.end method

.method public setHideSponsorBilling(Z)V
    .locals 1
    .param p1, "hideSponsorBilling"    # Z

    .prologue
    .line 1060
    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    .line 1061
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setHideSponsorBillingIsSet(Z)V

    .line 1062
    return-void
.end method

.method public setHideSponsorBillingIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xd

    aput-boolean p1, v0, v1

    .line 1075
    return-void
.end method

.method public setIncomingEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "incomingEmailAddress"    # Ljava/lang/String;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setIncomingEmailAddressIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 562
    if-nez p1, :cond_0

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    .line 565
    :cond_0
    return-void
.end method

.method public setMaxReferrals(I)V
    .locals 1
    .param p1, "maxReferrals"    # I

    .prologue
    .line 655
    iput p1, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    .line 656
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setMaxReferralsIsSet(Z)V

    .line 657
    return-void
.end method

.method public setMaxReferralsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 669
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 670
    return-void
.end method

.method public setPartnerEmailOptInDate(J)V
    .locals 1
    .param p1, "partnerEmailOptInDate"    # J

    .prologue
    .line 810
    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    .line 811
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setPartnerEmailOptInDateIsSet(Z)V

    .line 812
    return-void
.end method

.method public setPartnerEmailOptInDateIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 824
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xa

    aput-boolean p1, v0, v1

    .line 825
    return-void
.end method

.method public setPreactivation(Z)V
    .locals 1
    .param p1, "preactivation"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    .line 490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setPreactivationIsSet(Z)V

    .line 491
    return-void
.end method

.method public setPreactivationIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 503
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 504
    return-void
.end method

.method public setPreferredCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "preferredCountry"    # Ljava/lang/String;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public setPreferredCountryIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 868
    if-nez p1, :cond_0

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    .line 871
    :cond_0
    return-void
.end method

.method public setPreferredLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "preferredLanguage"    # Ljava/lang/String;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    .line 833
    return-void
.end method

.method public setPreferredLanguageIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 845
    if-nez p1, :cond_0

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    .line 848
    :cond_0
    return-void
.end method

.method public setRecentMailedAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "recentMailedAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    .line 588
    return-void
.end method

.method public setRecentMailedAddressesIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 600
    if-nez p1, :cond_0

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    .line 603
    :cond_0
    return-void
.end method

.method public setRecognitionLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "recognitionLanguage"    # Ljava/lang/String;

    .prologue
    .line 969
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    .line 970
    return-void
.end method

.method public setRecognitionLanguageIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 982
    if-nez p1, :cond_0

    .line 983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    .line 985
    :cond_0
    return-void
.end method

.method public setRefererCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "refererCode"    # Ljava/lang/String;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    .line 700
    return-void
.end method

.method public setRefererCodeIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    .line 715
    :cond_0
    return-void
.end method

.method public setReferralCount(I)V
    .locals 1
    .param p1, "referralCount"    # I

    .prologue
    .line 677
    iput p1, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    .line 678
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setReferralCountIsSet(Z)V

    .line 679
    return-void
.end method

.method public setReferralCountIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 691
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 692
    return-void
.end method

.method public setReferralProof(Ljava/lang/String;)V
    .locals 0
    .param p1, "referralProof"    # Ljava/lang/String;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    .line 993
    return-void
.end method

.method public setReferralProofIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1005
    if-nez p1, :cond_0

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    .line 1008
    :cond_0
    return-void
.end method

.method public setReminderEmailConfig(Lcom/evernote/edam/type/ReminderEmailConfig;)V
    .locals 0
    .param p1, "reminderEmailConfig"    # Lcom/evernote/edam/type/ReminderEmailConfig;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    .line 1135
    return-void
.end method

.method public setReminderEmailConfigIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1147
    if-nez p1, :cond_0

    .line 1148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    .line 1150
    :cond_0
    return-void
.end method

.method public setSentEmailCount(I)V
    .locals 1
    .param p1, "sentEmailCount"    # I

    .prologue
    .line 744
    iput p1, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    .line 745
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailCountIsSet(Z)V

    .line 746
    return-void
.end method

.method public setSentEmailCountIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 758
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x7

    aput-boolean p1, v0, v1

    .line 759
    return-void
.end method

.method public setSentEmailDate(J)V
    .locals 1
    .param p1, "sentEmailDate"    # J

    .prologue
    .line 722
    iput-wide p1, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    .line 723
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setSentEmailDateIsSet(Z)V

    .line 724
    return-void
.end method

.method public setSentEmailDateIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 736
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x6

    aput-boolean p1, v0, v1

    .line 737
    return-void
.end method

.method public setTaxExempt(Z)V
    .locals 1
    .param p1, "taxExempt"    # Z

    .prologue
    .line 1082
    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    .line 1083
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setTaxExemptIsSet(Z)V

    .line 1084
    return-void
.end method

.method public setTaxExemptIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xe

    aput-boolean p1, v0, v1

    .line 1097
    return-void
.end method

.method public setTwitterId(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterId"    # Ljava/lang/String;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    .line 924
    return-void
.end method

.method public setTwitterIdIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 936
    if-nez p1, :cond_0

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    .line 939
    :cond_0
    return-void
.end method

.method public setTwitterUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterUserName"    # Ljava/lang/String;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    .line 901
    return-void
.end method

.method public setTwitterUserNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    .line 916
    :cond_0
    return-void
.end method

.method public setUseEmailAutoFiling(Z)V
    .locals 1
    .param p1, "useEmailAutoFiling"    # Z

    .prologue
    .line 1104
    iput-boolean p1, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    .line 1105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/UserAttributes;->setUseEmailAutoFilingIsSet(Z)V

    .line 1106
    return-void
.end method

.method public setUseEmailAutoFilingIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xf

    aput-boolean p1, v0, v1

    .line 1119
    return-void
.end method

.method public setViewedPromotions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "viewedPromotions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    .line 527
    return-void
.end method

.method public setViewedPromotionsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    .line 542
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserAttributes("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2224
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 2226
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2227
    const-string v2, "defaultLocationName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    if-nez v2, :cond_3d

    .line 2229
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    :goto_0
    const/4 v0, 0x0

    .line 2235
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2236
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    :cond_1
    const-string v2, "defaultLatitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2239
    const/4 v0, 0x0

    .line 2241
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2242
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    :cond_3
    const-string v2, "defaultLongitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2245
    const/4 v0, 0x0

    .line 2247
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2248
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    :cond_5
    const-string v2, "preactivation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2251
    const/4 v0, 0x0

    .line 2253
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2254
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    :cond_7
    const-string v2, "viewedPromotions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-nez v2, :cond_3e

    .line 2257
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    :goto_1
    const/4 v0, 0x0

    .line 2263
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2264
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2265
    :cond_9
    const-string v2, "incomingEmailAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    if-nez v2, :cond_3f

    .line 2267
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    :goto_2
    const/4 v0, 0x0

    .line 2273
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2274
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    :cond_b
    const-string v2, "recentMailedAddresses:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-nez v2, :cond_40

    .line 2277
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    :goto_3
    const/4 v0, 0x0

    .line 2283
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2284
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    :cond_d
    const-string v2, "comments:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    if-nez v2, :cond_41

    .line 2287
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    :goto_4
    const/4 v0, 0x0

    .line 2293
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2294
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    :cond_f
    const-string v2, "dateAgreedToTermsOfService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2297
    const/4 v0, 0x0

    .line 2299
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2300
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2301
    :cond_11
    const-string v2, "maxReferrals:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    iget v2, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2303
    const/4 v0, 0x0

    .line 2305
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2306
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    :cond_13
    const-string v2, "referralCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    iget v2, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2309
    const/4 v0, 0x0

    .line 2311
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2312
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    :cond_15
    const-string v2, "refererCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    if-nez v2, :cond_42

    .line 2315
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2319
    :goto_5
    const/4 v0, 0x0

    .line 2321
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2322
    if-nez v0, :cond_17

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    :cond_17
    const-string v2, "sentEmailDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2325
    const/4 v0, 0x0

    .line 2327
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2328
    if-nez v0, :cond_19

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2329
    :cond_19
    const-string v2, "sentEmailCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2330
    iget v2, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2331
    const/4 v0, 0x0

    .line 2333
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2334
    if-nez v0, :cond_1b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    :cond_1b
    const-string v2, "dailyEmailLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    iget v2, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2337
    const/4 v0, 0x0

    .line 2339
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2340
    if-nez v0, :cond_1d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    :cond_1d
    const-string v2, "emailOptOutDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2343
    const/4 v0, 0x0

    .line 2345
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2346
    if-nez v0, :cond_1f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    :cond_1f
    const-string v2, "partnerEmailOptInDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    iget-wide v2, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2349
    const/4 v0, 0x0

    .line 2351
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2352
    if-nez v0, :cond_21

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2353
    :cond_21
    const-string v2, "preferredLanguage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    if-nez v2, :cond_43

    .line 2355
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2359
    :goto_6
    const/4 v0, 0x0

    .line 2361
    :cond_22
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2362
    if-nez v0, :cond_23

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2363
    :cond_23
    const-string v2, "preferredCountry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    if-nez v2, :cond_44

    .line 2365
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2369
    :goto_7
    const/4 v0, 0x0

    .line 2371
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2372
    if-nez v0, :cond_25

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    :cond_25
    const-string v2, "clipFullPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2374
    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2375
    const/4 v0, 0x0

    .line 2377
    :cond_26
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2378
    if-nez v0, :cond_27

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    :cond_27
    const-string v2, "twitterUserName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    if-nez v2, :cond_45

    .line 2381
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    :goto_8
    const/4 v0, 0x0

    .line 2387
    :cond_28
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2388
    if-nez v0, :cond_29

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    :cond_29
    const-string v2, "twitterId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    if-nez v2, :cond_46

    .line 2391
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    :goto_9
    const/4 v0, 0x0

    .line 2397
    :cond_2a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2398
    if-nez v0, :cond_2b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    :cond_2b
    const-string v2, "groupName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    if-nez v2, :cond_47

    .line 2401
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    :goto_a
    const/4 v0, 0x0

    .line 2407
    :cond_2c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2408
    if-nez v0, :cond_2d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    :cond_2d
    const-string v2, "recognitionLanguage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    if-nez v2, :cond_48

    .line 2411
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    :goto_b
    const/4 v0, 0x0

    .line 2417
    :cond_2e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2418
    if-nez v0, :cond_2f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    :cond_2f
    const-string v2, "referralProof:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    if-nez v2, :cond_49

    .line 2421
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    :goto_c
    const/4 v0, 0x0

    .line 2427
    :cond_30
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2428
    if-nez v0, :cond_31

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    :cond_31
    const-string v2, "educationalDiscount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2431
    const/4 v0, 0x0

    .line 2433
    :cond_32
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2434
    if-nez v0, :cond_33

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    :cond_33
    const-string v2, "businessAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    if-nez v2, :cond_4a

    .line 2437
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    :goto_d
    const/4 v0, 0x0

    .line 2443
    :cond_34
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2444
    if-nez v0, :cond_35

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    :cond_35
    const-string v2, "hideSponsorBilling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2446
    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2447
    const/4 v0, 0x0

    .line 2449
    :cond_36
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2450
    if-nez v0, :cond_37

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    :cond_37
    const-string v2, "taxExempt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2453
    const/4 v0, 0x0

    .line 2455
    :cond_38
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2456
    if-nez v0, :cond_39

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    :cond_39
    const-string v2, "useEmailAutoFiling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    iget-boolean v2, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2459
    const/4 v0, 0x0

    .line 2461
    :cond_3a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2462
    if-nez v0, :cond_3b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2463
    :cond_3b
    const-string v2, "reminderEmailConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2464
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    if-nez v2, :cond_4b

    .line 2465
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    :goto_e
    const/4 v0, 0x0

    .line 2471
    :cond_3c
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2231
    :cond_3d
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2259
    :cond_3e
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2269
    :cond_3f
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2279
    :cond_40
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2289
    :cond_41
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 2317
    :cond_42
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 2357
    :cond_43
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 2367
    :cond_44
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 2383
    :cond_45
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 2393
    :cond_46
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 2403
    :cond_47
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 2413
    :cond_48
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 2423
    :cond_49
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 2439
    :cond_4a
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 2467
    :cond_4b
    iget-object v2, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e
.end method

.method public unsetBusinessAddress()V
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    .line 1042
    return-void
.end method

.method public unsetClipFullPage()V
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 884
    return-void
.end method

.method public unsetComments()V
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public unsetDailyEmailLimit()V
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 772
    return-void
.end method

.method public unsetDateAgreedToTermsOfService()V
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 639
    return-void
.end method

.method public unsetDefaultLatitude()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 451
    return-void
.end method

.method public unsetDefaultLocationName()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public unsetDefaultLongitude()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 473
    return-void
.end method

.method public unsetEducationalDiscount()V
    .locals 3

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1021
    return-void
.end method

.method public unsetEmailOptOutDate()V
    .locals 3

    .prologue
    .line 793
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 794
    return-void
.end method

.method public unsetGroupName()V
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    .line 951
    return-void
.end method

.method public unsetHideSponsorBilling()V
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1066
    return-void
.end method

.method public unsetIncomingEmailAddress()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public unsetMaxReferrals()V
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 661
    return-void
.end method

.method public unsetPartnerEmailOptInDate()V
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 816
    return-void
.end method

.method public unsetPreactivation()V
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 495
    return-void
.end method

.method public unsetPreferredCountry()V
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    .line 860
    return-void
.end method

.method public unsetPreferredLanguage()V
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    .line 837
    return-void
.end method

.method public unsetRecentMailedAddresses()V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    .line 592
    return-void
.end method

.method public unsetRecognitionLanguage()V
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    .line 974
    return-void
.end method

.method public unsetRefererCode()V
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public unsetReferralCount()V
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 683
    return-void
.end method

.method public unsetReferralProof()V
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    .line 997
    return-void
.end method

.method public unsetReminderEmailConfig()V
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    .line 1139
    return-void
.end method

.method public unsetSentEmailCount()V
    .locals 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 750
    return-void
.end method

.method public unsetSentEmailDate()V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 728
    return-void
.end method

.method public unsetTaxExempt()V
    .locals 3

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1088
    return-void
.end method

.method public unsetTwitterId()V
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    .line 928
    return-void
.end method

.method public unsetTwitterUserName()V
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    .line 905
    return-void
.end method

.method public unsetUseEmailAutoFiling()V
    .locals 3

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->__isset_vector:[Z

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1110
    return-void
.end method

.method public unsetViewedPromotions()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    .line 531
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
    .line 2477
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xb

    .line 2015
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->validate()V

    .line 2017
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 2018
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2019
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLocationName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2020
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LOCATION_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2021
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLocationName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2025
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLatitude()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2026
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LATITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2027
    iget-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLatitude:D

    invoke-virtual {p1, v4, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 2028
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2030
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDefaultLongitude()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2031
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->DEFAULT_LONGITUDE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2032
    iget-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->defaultLongitude:D

    invoke-virtual {p1, v4, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 2033
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2035
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreactivation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2036
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->PREACTIVATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2037
    iget-boolean v3, p0, Lcom/evernote/edam/type/UserAttributes;->preactivation:Z

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 2038
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2040
    :cond_3
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 2041
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetViewedPromotions()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2042
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->VIEWED_PROMOTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2044
    new-instance v3, Lcom/evernote/thrift/protocol/TList;

    iget-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v6, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 2045
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->viewedPromotions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2047
    .local v0, "_iter6":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 2049
    .end local v0    # "_iter6":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 2051
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2054
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 2055
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetIncomingEmailAddress()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2056
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->INCOMING_EMAIL_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2057
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->incomingEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2061
    :cond_6
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 2062
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecentMailedAddresses()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2063
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->RECENT_MAILED_ADDRESSES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2065
    new-instance v3, Lcom/evernote/thrift/protocol/TList;

    iget-object v4, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v6, v4}, Lcom/evernote/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeListBegin(Lcom/evernote/thrift/protocol/TList;)V

    .line 2066
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->recentMailedAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2068
    .local v1, "_iter7":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 2070
    .end local v1    # "_iter7":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeListEnd()V

    .line 2072
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2075
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2076
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetComments()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2077
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->COMMENTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2078
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->comments:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2082
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDateAgreedToTermsOfService()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2083
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->DATE_AGREED_TO_TERMS_OF_SERVICE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2084
    iget-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->dateAgreedToTermsOfService:J

    invoke-virtual {p1, v4, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 2085
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2087
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetMaxReferrals()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2088
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->MAX_REFERRALS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2089
    iget v3, p0, Lcom/evernote/edam/type/UserAttributes;->maxReferrals:I

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 2090
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2092
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralCount()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2093
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->REFERRAL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2094
    iget v3, p0, Lcom/evernote/edam/type/UserAttributes;->referralCount:I

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 2095
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2097
    :cond_c
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 2098
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRefererCode()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2099
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->REFERER_CODE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2100
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->refererCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2104
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailDate()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2105
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->SENT_EMAIL_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2106
    iget-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailDate:J

    invoke-virtual {p1, v4, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 2107
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2109
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetSentEmailCount()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2110
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->SENT_EMAIL_COUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2111
    iget v3, p0, Lcom/evernote/edam/type/UserAttributes;->sentEmailCount:I

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 2112
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2114
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetDailyEmailLimit()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2115
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->DAILY_EMAIL_LIMIT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2116
    iget v3, p0, Lcom/evernote/edam/type/UserAttributes;->dailyEmailLimit:I

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 2117
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2119
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEmailOptOutDate()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2120
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->EMAIL_OPT_OUT_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2121
    iget-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->emailOptOutDate:J

    invoke-virtual {p1, v4, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 2122
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2124
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPartnerEmailOptInDate()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2125
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->PARTNER_EMAIL_OPT_IN_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2126
    iget-wide v4, p0, Lcom/evernote/edam/type/UserAttributes;->partnerEmailOptInDate:J

    invoke-virtual {p1, v4, v5}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 2127
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2129
    :cond_12
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 2130
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredLanguage()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2131
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->PREFERRED_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2132
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->preferredLanguage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2136
    :cond_13
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 2137
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetPreferredCountry()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2138
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->PREFERRED_COUNTRY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2139
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->preferredCountry:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2143
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetClipFullPage()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2144
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->CLIP_FULL_PAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2145
    iget-boolean v3, p0, Lcom/evernote/edam/type/UserAttributes;->clipFullPage:Z

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 2146
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2148
    :cond_15
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 2149
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterUserName()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2150
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->TWITTER_USER_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2151
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->twitterUserName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2155
    :cond_16
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 2156
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTwitterId()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2157
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->TWITTER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2158
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->twitterId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2162
    :cond_17
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 2163
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetGroupName()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2164
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2165
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2169
    :cond_18
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 2170
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetRecognitionLanguage()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2171
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->RECOGNITION_LANGUAGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2172
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->recognitionLanguage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2176
    :cond_19
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 2177
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReferralProof()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2178
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->REFERRAL_PROOF_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2179
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->referralProof:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2183
    :cond_1a
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetEducationalDiscount()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2184
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->EDUCATIONAL_DISCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2185
    iget-boolean v3, p0, Lcom/evernote/edam/type/UserAttributes;->educationalDiscount:Z

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 2186
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2188
    :cond_1b
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    if-eqz v3, :cond_1c

    .line 2189
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetBusinessAddress()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2190
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->BUSINESS_ADDRESS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2191
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->businessAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2195
    :cond_1c
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetHideSponsorBilling()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2196
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->HIDE_SPONSOR_BILLING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2197
    iget-boolean v3, p0, Lcom/evernote/edam/type/UserAttributes;->hideSponsorBilling:Z

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 2198
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2200
    :cond_1d
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetTaxExempt()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2201
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->TAX_EXEMPT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2202
    iget-boolean v3, p0, Lcom/evernote/edam/type/UserAttributes;->taxExempt:Z

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 2203
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2205
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetUseEmailAutoFiling()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2206
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->USE_EMAIL_AUTO_FILING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2207
    iget-boolean v3, p0, Lcom/evernote/edam/type/UserAttributes;->useEmailAutoFiling:Z

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 2208
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2210
    :cond_1f
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    if-eqz v3, :cond_20

    .line 2211
    invoke-virtual {p0}, Lcom/evernote/edam/type/UserAttributes;->isSetReminderEmailConfig()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2212
    sget-object v3, Lcom/evernote/edam/type/UserAttributes;->REMINDER_EMAIL_CONFIG_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 2213
    iget-object v3, p0, Lcom/evernote/edam/type/UserAttributes;->reminderEmailConfig:Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-virtual {v3}, Lcom/evernote/edam/type/ReminderEmailConfig;->getValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 2214
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 2217
    :cond_20
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 2218
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 2219
    return-void
.end method
