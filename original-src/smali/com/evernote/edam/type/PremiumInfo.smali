.class public Lcom/evernote/edam/type/PremiumInfo;
.super Ljava/lang/Object;
.source "PremiumInfo.java"

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
        "Lcom/evernote/edam/type/PremiumInfo;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CAN_PURCHASE_UPLOAD_ALLOWANCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_CANCELLATION_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_EXPIRATION_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_EXTENDABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_RECURRING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_UPGRADABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SPONSORED_GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SPONSORED_GROUP_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __CANPURCHASEUPLOADALLOWANCE_ISSET_ID:I = 0x7

.field private static final __CURRENTTIME_ISSET_ID:I = 0x0

.field private static final __PREMIUMCANCELLATIONPENDING_ISSET_ID:I = 0x6

.field private static final __PREMIUMEXPIRATIONDATE_ISSET_ID:I = 0x3

.field private static final __PREMIUMEXTENDABLE_ISSET_ID:I = 0x4

.field private static final __PREMIUMPENDING_ISSET_ID:I = 0x5

.field private static final __PREMIUMRECURRING_ISSET_ID:I = 0x2

.field private static final __PREMIUMUPGRADABLE_ISSET_ID:I = 0x8

.field private static final __PREMIUM_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private canPurchaseUploadAllowance:Z

.field private currentTime:J

.field private premium:Z

.field private premiumCancellationPending:Z

.field private premiumExpirationDate:J

.field private premiumExtendable:Z

.field private premiumPending:Z

.field private premiumRecurring:Z

.field private premiumUpgradable:Z

.field private sponsoredGroupName:Ljava/lang/String;

.field private sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0x8

    const/16 v4, 0xa

    const/4 v3, 0x2

    .line 70
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "PremiumInfo"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 72
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "currentTime"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 73
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premium"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 74
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumRecurring"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_RECURRING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 75
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumExpirationDate"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_EXPIRATION_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 76
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumExtendable"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_EXTENDABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 77
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumPending"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 78
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumCancellationPending"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_CANCELLATION_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 79
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "canPurchaseUploadAllowance"

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->CAN_PURCHASE_UPLOAD_ALLOWANCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 80
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sponsoredGroupName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->SPONSORED_GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 81
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sponsoredGroupRole"

    invoke-direct {v0, v1, v5, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->SPONSORED_GROUP_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 82
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumUpgradable"

    invoke-direct {v0, v1, v3, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_UPGRADABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    .line 110
    return-void
.end method

.method public constructor <init>(JZZZZZZ)V
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "premium"    # Z
    .param p4, "premiumRecurring"    # Z
    .param p5, "premiumExtendable"    # Z
    .param p6, "premiumPending"    # Z
    .param p7, "premiumCancellationPending"    # Z
    .param p8, "canPurchaseUploadAllowance"    # Z

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-direct {p0}, Lcom/evernote/edam/type/PremiumInfo;-><init>()V

    .line 122
    iput-wide p1, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    .line 123
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setCurrentTimeIsSet(Z)V

    .line 124
    iput-boolean p3, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    .line 125
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumIsSet(Z)V

    .line 126
    iput-boolean p4, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    .line 127
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumRecurringIsSet(Z)V

    .line 128
    iput-boolean p5, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    .line 129
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExtendableIsSet(Z)V

    .line 130
    iput-boolean p6, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    .line 131
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumPendingIsSet(Z)V

    .line 132
    iput-boolean p7, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    .line 133
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumCancellationPendingIsSet(Z)V

    .line 134
    iput-boolean p8, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    .line 135
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setCanPurchaseUploadAllowanceIsSet(Z)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/PremiumInfo;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/PremiumInfo;

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    .line 142
    iget-object v0, p1, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-wide v0, p1, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    iput-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    .line 144
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    .line 145
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    .line 146
    iget-wide v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    .line 147
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    .line 148
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    .line 149
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    .line 150
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    .line 151
    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    .line 157
    :cond_1
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    .line 158
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setCurrentTimeIsSet(Z)V

    .line 166
    iput-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    .line 167
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumIsSet(Z)V

    .line 168
    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    .line 169
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumRecurringIsSet(Z)V

    .line 170
    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    .line 171
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExpirationDateIsSet(Z)V

    .line 172
    iput-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    .line 173
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExtendableIsSet(Z)V

    .line 174
    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    .line 175
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumPendingIsSet(Z)V

    .line 176
    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    .line 177
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumCancellationPendingIsSet(Z)V

    .line 178
    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    .line 179
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setCanPurchaseUploadAllowanceIsSet(Z)V

    .line 180
    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    .line 181
    iput-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    .line 183
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumUpgradableIsSet(Z)V

    .line 184
    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    .line 185
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/PremiumInfo;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/type/PremiumInfo;

    .prologue
    .line 560
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 561
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

    .line 666
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    const/4 v0, 0x0

    .line 565
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 567
    .local v1, "typedOther":Lcom/evernote/edam/type/PremiumInfo;
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCurrentTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetCurrentTime()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 568
    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCurrentTime()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    iget-wide v4, v1, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 572
    if-nez v0, :cond_0

    .line 576
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremium()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremium()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 577
    if-nez v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremium()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 581
    if-nez v0, :cond_0

    .line 585
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumRecurring()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumRecurring()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 586
    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumRecurring()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 590
    if-nez v0, :cond_0

    .line 594
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 595
    if-nez v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    iget-wide v4, v1, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 599
    if-nez v0, :cond_0

    .line 603
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExtendable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExtendable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 604
    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExtendable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 608
    if-nez v0, :cond_0

    .line 612
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumPending()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumPending()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 613
    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumPending()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 617
    if-nez v0, :cond_0

    .line 621
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumCancellationPending()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumCancellationPending()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 622
    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumCancellationPending()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 626
    if-nez v0, :cond_0

    .line 630
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCanPurchaseUploadAllowance()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetCanPurchaseUploadAllowance()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 631
    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCanPurchaseUploadAllowance()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 635
    if-nez v0, :cond_0

    .line 639
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 640
    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 644
    if-nez v0, :cond_0

    .line 648
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 649
    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    iget-object v3, v1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 653
    if-nez v0, :cond_0

    .line 657
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 658
    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 662
    if-nez v0, :cond_0

    .line 666
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/evernote/edam/type/PremiumInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->compareTo(Lcom/evernote/edam/type/PremiumInfo;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/PremiumInfo;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/evernote/edam/type/PremiumInfo;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/PremiumInfo;-><init>(Lcom/evernote/edam/type/PremiumInfo;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->deepCopy()Lcom/evernote/edam/type/PremiumInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/PremiumInfo;)Z
    .locals 28
    .param p1, "that"    # Lcom/evernote/edam/type/PremiumInfo;

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    const/16 v24, 0x0

    .line 551
    :goto_0
    return v24

    .line 452
    :cond_0
    const/4 v14, 0x1

    .line 453
    .local v14, "this_present_currentTime":Z
    const/4 v3, 0x1

    .line 454
    .local v3, "that_present_currentTime":Z
    if-nez v14, :cond_1

    if-eqz v3, :cond_4

    .line 455
    :cond_1
    if-eqz v14, :cond_2

    if-nez v3, :cond_3

    .line 456
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_4

    .line 458
    const/16 v24, 0x0

    goto :goto_0

    .line 461
    :cond_4
    const/4 v15, 0x1

    .line 462
    .local v15, "this_present_premium":Z
    const/4 v4, 0x1

    .line 463
    .local v4, "that_present_premium":Z
    if-nez v15, :cond_5

    if-eqz v4, :cond_8

    .line 464
    :cond_5
    if-eqz v15, :cond_6

    if-nez v4, :cond_7

    .line 465
    :cond_6
    const/16 v24, 0x0

    goto :goto_0

    .line 466
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 467
    const/16 v24, 0x0

    goto :goto_0

    .line 470
    :cond_8
    const/16 v20, 0x1

    .line 471
    .local v20, "this_present_premiumRecurring":Z
    const/4 v9, 0x1

    .line 472
    .local v9, "that_present_premiumRecurring":Z
    if-nez v20, :cond_9

    if-eqz v9, :cond_c

    .line 473
    :cond_9
    if-eqz v20, :cond_a

    if-nez v9, :cond_b

    .line 474
    :cond_a
    const/16 v24, 0x0

    goto :goto_0

    .line 475
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 476
    const/16 v24, 0x0

    goto :goto_0

    .line 479
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v17

    .line 480
    .local v17, "this_present_premiumExpirationDate":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v6

    .line 481
    .local v6, "that_present_premiumExpirationDate":Z
    if-nez v17, :cond_d

    if-eqz v6, :cond_10

    .line 482
    :cond_d
    if-eqz v17, :cond_e

    if-nez v6, :cond_f

    .line 483
    :cond_e
    const/16 v24, 0x0

    goto :goto_0

    .line 484
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_10

    .line 485
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 488
    :cond_10
    const/16 v18, 0x1

    .line 489
    .local v18, "this_present_premiumExtendable":Z
    const/4 v7, 0x1

    .line 490
    .local v7, "that_present_premiumExtendable":Z
    if-nez v18, :cond_11

    if-eqz v7, :cond_14

    .line 491
    :cond_11
    if-eqz v18, :cond_12

    if-nez v7, :cond_13

    .line 492
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 493
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    .line 494
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 497
    :cond_14
    const/16 v19, 0x1

    .line 498
    .local v19, "this_present_premiumPending":Z
    const/4 v8, 0x1

    .line 499
    .local v8, "that_present_premiumPending":Z
    if-nez v19, :cond_15

    if-eqz v8, :cond_18

    .line 500
    :cond_15
    if-eqz v19, :cond_16

    if-nez v8, :cond_17

    .line 501
    :cond_16
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 502
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    .line 503
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 506
    :cond_18
    const/16 v16, 0x1

    .line 507
    .local v16, "this_present_premiumCancellationPending":Z
    const/4 v5, 0x1

    .line 508
    .local v5, "that_present_premiumCancellationPending":Z
    if-nez v16, :cond_19

    if-eqz v5, :cond_1c

    .line 509
    :cond_19
    if-eqz v16, :cond_1a

    if-nez v5, :cond_1b

    .line 510
    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 511
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1c

    .line 512
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 515
    :cond_1c
    const/4 v13, 0x1

    .line 516
    .local v13, "this_present_canPurchaseUploadAllowance":Z
    const/4 v2, 0x1

    .line 517
    .local v2, "that_present_canPurchaseUploadAllowance":Z
    if-nez v13, :cond_1d

    if-eqz v2, :cond_20

    .line 518
    :cond_1d
    if-eqz v13, :cond_1e

    if-nez v2, :cond_1f

    .line 519
    :cond_1e
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 520
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_20

    .line 521
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 524
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v22

    .line 525
    .local v22, "this_present_sponsoredGroupName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v11

    .line 526
    .local v11, "that_present_sponsoredGroupName":Z
    if-nez v22, :cond_21

    if-eqz v11, :cond_24

    .line 527
    :cond_21
    if-eqz v22, :cond_22

    if-nez v11, :cond_23

    .line 528
    :cond_22
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 529
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_24

    .line 530
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 533
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v23

    .line 534
    .local v23, "this_present_sponsoredGroupRole":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v12

    .line 535
    .local v12, "that_present_sponsoredGroupRole":Z
    if-nez v23, :cond_25

    if-eqz v12, :cond_28

    .line 536
    :cond_25
    if-eqz v23, :cond_26

    if-nez v12, :cond_27

    .line 537
    :cond_26
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 538
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/evernote/edam/type/SponsoredGroupRole;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_28

    .line 539
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 542
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v21

    .line 543
    .local v21, "this_present_premiumUpgradable":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v10

    .line 544
    .local v10, "that_present_premiumUpgradable":Z
    if-nez v21, :cond_29

    if-eqz v10, :cond_2c

    .line 545
    :cond_29
    if-eqz v21, :cond_2a

    if-nez v10, :cond_2b

    .line 546
    :cond_2a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 547
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2c

    .line 548
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 551
    :cond_2c
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 441
    if-nez p1, :cond_1

    .line 445
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 443
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/PremiumInfo;

    if-eqz v1, :cond_0

    .line 444
    check-cast p1, Lcom/evernote/edam/type/PremiumInfo;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->equals(Lcom/evernote/edam/type/PremiumInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    return-wide v0
.end method

.method public getPremiumExpirationDate()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    return-wide v0
.end method

.method public getSponsoredGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsoredGroupRole()Lcom/evernote/edam/type/SponsoredGroupRole;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public isCanPurchaseUploadAllowance()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    return v0
.end method

.method public isPremium()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    return v0
.end method

.method public isPremiumCancellationPending()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    return v0
.end method

.method public isPremiumExtendable()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    return v0
.end method

.method public isPremiumPending()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    return v0
.end method

.method public isPremiumRecurring()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    return v0
.end method

.method public isPremiumUpgradable()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    return v0
.end method

.method public isSetCanPurchaseUploadAllowance()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetCurrentTime()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremium()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumCancellationPending()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumExpirationDate()Z
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumExtendable()Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumPending()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumRecurring()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPremiumUpgradable()Z
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetSponsoredGroupName()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSponsoredGroupRole()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 671
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 674
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 675
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 770
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 771
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->validate()V

    .line 772
    return-void

    .line 678
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 766
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 768
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 680
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_1

    .line 681
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    .line 682
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setCurrentTimeIsSet(Z)V

    goto :goto_1

    .line 684
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 688
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_2

    .line 689
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    .line 690
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumIsSet(Z)V

    goto :goto_1

    .line 692
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 696
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_3

    .line 697
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    .line 698
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumRecurringIsSet(Z)V

    goto :goto_1

    .line 700
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 704
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_4

    .line 705
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    .line 706
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExpirationDateIsSet(Z)V

    goto :goto_1

    .line 708
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 712
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_5

    .line 713
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    .line 714
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExtendableIsSet(Z)V

    goto :goto_1

    .line 716
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 720
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_6

    .line 721
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    .line 722
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumPendingIsSet(Z)V

    goto :goto_1

    .line 724
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 728
    :pswitch_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_7

    .line 729
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    .line 730
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumCancellationPendingIsSet(Z)V

    goto/16 :goto_1

    .line 732
    :cond_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 736
    :pswitch_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_8

    .line 737
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    .line 738
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setCanPurchaseUploadAllowanceIsSet(Z)V

    goto/16 :goto_1

    .line 740
    :cond_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 744
    :pswitch_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_9

    .line 745
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    goto/16 :goto_1

    .line 747
    :cond_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 751
    :pswitch_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 752
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/type/SponsoredGroupRole;->findByValue(I)Lcom/evernote/edam/type/SponsoredGroupRole;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    goto/16 :goto_1

    .line 754
    :cond_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 758
    :pswitch_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_b

    .line 759
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    .line 760
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumUpgradableIsSet(Z)V

    goto/16 :goto_1

    .line 762
    :cond_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .end packed-switch
.end method

.method public setCanPurchaseUploadAllowance(Z)V
    .locals 1
    .param p1, "canPurchaseUploadAllowance"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setCanPurchaseUploadAllowanceIsSet(Z)V

    .line 348
    return-void
.end method

.method public setCanPurchaseUploadAllowanceIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 360
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x7

    aput-boolean p1, v0, v1

    .line 361
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setCurrentTimeIsSet(Z)V

    .line 194
    return-void
.end method

.method public setCurrentTimeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 207
    return-void
.end method

.method public setPremium(Z)V
    .locals 1
    .param p1, "premium"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumIsSet(Z)V

    .line 216
    return-void
.end method

.method public setPremiumCancellationPending(Z)V
    .locals 1
    .param p1, "premiumCancellationPending"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumCancellationPendingIsSet(Z)V

    .line 326
    return-void
.end method

.method public setPremiumCancellationPendingIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x6

    aput-boolean p1, v0, v1

    .line 339
    return-void
.end method

.method public setPremiumExpirationDate(J)V
    .locals 1
    .param p1, "premiumExpirationDate"    # J

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExpirationDateIsSet(Z)V

    .line 260
    return-void
.end method

.method public setPremiumExpirationDateIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 273
    return-void
.end method

.method public setPremiumExtendable(Z)V
    .locals 1
    .param p1, "premiumExtendable"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExtendableIsSet(Z)V

    .line 282
    return-void
.end method

.method public setPremiumExtendableIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 295
    return-void
.end method

.method public setPremiumIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 229
    return-void
.end method

.method public setPremiumPending(Z)V
    .locals 1
    .param p1, "premiumPending"    # Z

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumPendingIsSet(Z)V

    .line 304
    return-void
.end method

.method public setPremiumPendingIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 317
    return-void
.end method

.method public setPremiumRecurring(Z)V
    .locals 1
    .param p1, "premiumRecurring"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumRecurringIsSet(Z)V

    .line 238
    return-void
.end method

.method public setPremiumRecurringIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 251
    return-void
.end method

.method public setPremiumUpgradable(Z)V
    .locals 1
    .param p1, "premiumUpgradable"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumUpgradableIsSet(Z)V

    .line 424
    return-void
.end method

.method public setPremiumUpgradableIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 436
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/16 v1, 0x8

    aput-boolean p1, v0, v1

    .line 437
    return-void
.end method

.method public setSponsoredGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sponsoredGroupName"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setSponsoredGroupNameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    .line 384
    :cond_0
    return-void
.end method

.method public setSponsoredGroupRole(Lcom/evernote/edam/type/SponsoredGroupRole;)V
    .locals 0
    .param p1, "sponsoredGroupRole"    # Lcom/evernote/edam/type/SponsoredGroupRole;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    .line 400
    return-void
.end method

.method public setSponsoredGroupRoleIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    .line 415
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PremiumInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 832
    .local v0, "first":Z
    const-string v2, "currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    iget-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 834
    const/4 v0, 0x0

    .line 835
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_0
    const-string v2, "premium:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 838
    const/4 v0, 0x0

    .line 839
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_1
    const-string v2, "premiumRecurring:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 842
    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 844
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_2
    const-string v2, "premiumExpirationDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    iget-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 847
    const/4 v0, 0x0

    .line 849
    :cond_3
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_4
    const-string v2, "premiumExtendable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 852
    const/4 v0, 0x0

    .line 853
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_5
    const-string v2, "premiumPending:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 856
    const/4 v0, 0x0

    .line 857
    if-nez v0, :cond_6

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_6
    const-string v2, "premiumCancellationPending:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 860
    const/4 v0, 0x0

    .line 861
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :cond_7
    const-string v2, "canPurchaseUploadAllowance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 864
    const/4 v0, 0x0

    .line 865
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 866
    if-nez v0, :cond_8

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :cond_8
    const-string v2, "sponsoredGroupName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    iget-object v2, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 869
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :goto_0
    const/4 v0, 0x0

    .line 875
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 876
    if-nez v0, :cond_a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_a
    const-string v2, "sponsoredGroupRole:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    iget-object v2, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    if-nez v2, :cond_f

    .line 879
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :goto_1
    const/4 v0, 0x0

    .line 885
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 886
    if-nez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_c
    const-string v2, "premiumUpgradable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 889
    const/4 v0, 0x0

    .line 891
    :cond_d
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 871
    :cond_e
    iget-object v2, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 881
    :cond_f
    iget-object v2, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetCanPurchaseUploadAllowance()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 352
    return-void
.end method

.method public unsetCurrentTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 198
    return-void
.end method

.method public unsetPremium()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 220
    return-void
.end method

.method public unsetPremiumCancellationPending()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 330
    return-void
.end method

.method public unsetPremiumExpirationDate()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 264
    return-void
.end method

.method public unsetPremiumExtendable()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 286
    return-void
.end method

.method public unsetPremiumPending()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 308
    return-void
.end method

.method public unsetPremiumRecurring()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 242
    return-void
.end method

.method public unsetPremiumUpgradable()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 428
    return-void
.end method

.method public unsetSponsoredGroupName()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public unsetSponsoredGroupRole()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    .line 404
    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCurrentTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'currentTime\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremium()Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premium\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumRecurring()Z

    move-result v0

    if-nez v0, :cond_2

    .line 906
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premiumRecurring\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExtendable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 910
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premiumExtendable\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumPending()Z

    move-result v0

    if-nez v0, :cond_4

    .line 914
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premiumPending\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumCancellationPending()Z

    move-result v0

    if-nez v0, :cond_5

    .line 918
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premiumCancellationPending\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCanPurchaseUploadAllowance()Z

    move-result v0

    if-nez v0, :cond_6

    .line 922
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'canPurchaseUploadAllowance\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_6
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
    .line 775
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->validate()V

    .line 777
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 778
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 779
    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 780
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 781
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 782
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 783
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 784
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_RECURRING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 785
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 786
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 787
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_EXPIRATION_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 789
    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 790
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 792
    :cond_0
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_EXTENDABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 793
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 794
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 795
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 796
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 797
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 798
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_CANCELLATION_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 799
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 800
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 801
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->CAN_PURCHASE_UPLOAD_ALLOWANCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 802
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 803
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 804
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->SPONSORED_GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 807
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    if-eqz v0, :cond_2

    .line 812
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->SPONSORED_GROUP_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 814
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    invoke-virtual {v0}, Lcom/evernote/edam/type/SponsoredGroupRole;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 815
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 818
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 819
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_UPGRADABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 820
    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 821
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 823
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 824
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 825
    return-void
.end method
