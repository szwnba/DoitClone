.class public Lim/doit/pro/activity/UpgradeToProActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "UpgradeToProActivity.java"


# static fields
.field private static REQUEST_UPGRADE_CODE:I = 0x0

.field private static final SKU_YEARLY:Ljava/lang/String; = "im.doit.pro.v4.yearly"

.field private static final base64PublicKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxgJeqgpUzXOhjIwj+mnfrB449vzhCZtaBJS9tnveHjTnK4Qqvjh+hzf+nSdu5d+XnEN64veQUY115q5Q7YVcm0up7IJQayZ5vy9Aco/Ufkys3RCptoslNUkTDHb3iP82xGqI8hyjkxLpjAfhoisgdM+udzi7Fu+Y3TmsEQZJT/nOHNR+cQls3rVgPqgqGxMY0itDz87KkBT+Wp1Bl9eLEYkyCrphH/KJLDmDbRX+87OxyGxr7tKkGM4tFKR7MaN31ZVjeXdImaWoYN+twlqaEP55YjjGN/sibj1TXB8WFbEeOIw/9q169w/Il4nu+6PUgM6kMhCivOJOpR5X9gQAaQIDAQAB"


# instance fields
.field private accountTypeMessageTV:Landroid/widget/TextView;

.field private avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

.field protected buyNowBtn:Landroid/widget/Button;

.field mGotInventoryListener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

.field private mHelper:Lim/doit/pro/billing/IabHelper;

.field mPurchaseFinishedListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

.field private onBuyNowClick:Landroid/view/View$OnClickListener;

.field private proMagicstick:Landroid/widget/ImageView;

.field private usernameTV:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x2711

    sput v0, Lim/doit/pro/activity/UpgradeToProActivity;->REQUEST_UPGRADE_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 154
    new-instance v0, Lim/doit/pro/activity/UpgradeToProActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/UpgradeToProActivity$1;-><init>(Lim/doit/pro/activity/UpgradeToProActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->onBuyNowClick:Landroid/view/View$OnClickListener;

    .line 228
    new-instance v0, Lim/doit/pro/activity/UpgradeToProActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/UpgradeToProActivity$2;-><init>(Lim/doit/pro/activity/UpgradeToProActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mGotInventoryListener:Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    .line 290
    new-instance v0, Lim/doit/pro/activity/UpgradeToProActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/UpgradeToProActivity$3;-><init>(Lim/doit/pro/activity/UpgradeToProActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mPurchaseFinishedListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/UpgradeToProActivity;)Lim/doit/pro/billing/IabHelper;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/UpgradeToProActivity;Lim/doit/pro/billing/IabHelper;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/UpgradeToProActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lim/doit/pro/activity/UpgradeToProActivity;->setBuyNowViewContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/UpgradeToProActivity;Lim/doit/pro/billing/Purchase;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lim/doit/pro/activity/UpgradeToProActivity;->savePurchase(Lim/doit/pro/billing/Purchase;)V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/UpgradeToProActivity;Lim/doit/pro/billing/IabResult;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lim/doit/pro/activity/UpgradeToProActivity;->showIabResultFailedMessage(Lim/doit/pro/billing/IabResult;)V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lim/doit/pro/activity/UpgradeToProActivity;->initView()V

    .line 114
    invoke-direct {p0}, Lim/doit/pro/activity/UpgradeToProActivity;->initViewContent()V

    .line 115
    invoke-direct {p0}, Lim/doit/pro/activity/UpgradeToProActivity;->initListener()V

    .line 116
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-virtual {p0}, Lim/doit/pro/activity/UpgradeToProActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 130
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c0141

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 133
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 135
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->buyNowBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity;->onBuyNowClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lim/doit/pro/activity/UpgradeToProActivity;->initActionBar()V

    .line 121
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UpgradeToProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 122
    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UpgradeToProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->proMagicstick:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UpgradeToProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->usernameTV:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UpgradeToProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->accountTypeMessageTV:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UpgradeToProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->buyNowBtn:Landroid/widget/Button;

    .line 126
    return-void
.end method

.method private initViewContent()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isValidPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->proMagicstick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->accountTypeMessageTV:Landroid/widget/TextView;

    const v1, 0x7f0c01d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->usernameTV:Landroid/widget/TextView;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->proMagicstick:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->accountTypeMessageTV:Landroid/widget/TextView;

    const v1, 0x7f0c01d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private savePurchase(Lim/doit/pro/billing/Purchase;)V
    .locals 2
    .param p1, "purchase"    # Lim/doit/pro/billing/Purchase;

    .prologue
    .line 341
    new-instance v0, Lim/doit/pro/model/DPurchase;

    invoke-direct {v0}, Lim/doit/pro/model/DPurchase;-><init>()V

    .line 342
    .local v0, "dPurchase":Lim/doit/pro/model/DPurchase;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setUuid(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lim/doit/pro/billing/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setSignature(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lim/doit/pro/billing/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setOutTradeNo(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lim/doit/pro/billing/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setPurchaseData(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->purchaseDao:Lim/doit/pro/db/persist/PurchaseDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/PurchaseDao;->createAndSaveLog(Lim/doit/pro/model/DPurchase;)V

    .line 347
    return-void
.end method

.method private setBuyNowViewContent(Ljava/lang/String;)V
    .locals 5
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 218
    const v1, 0x7f0c01aa

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "content":Ljava/lang/String;
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const v2, 0x7f0c01f0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity;->buyNowBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method private setupBilling()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lim/doit/pro/billing/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxgJeqgpUzXOhjIwj+mnfrB449vzhCZtaBJS9tnveHjTnK4Qqvjh+hzf+nSdu5d+XnEN64veQUY115q5Q7YVcm0up7IJQayZ5vy9Aco/Ufkys3RCptoslNUkTDHb3iP82xGqI8hyjkxLpjAfhoisgdM+udzi7Fu+Y3TmsEQZJT/nOHNR+cQls3rVgPqgqGxMY0itDz87KkBT+Wp1Bl9eLEYkyCrphH/KJLDmDbRX+87OxyGxr7tKkGM4tFKR7MaN31ZVjeXdImaWoYN+twlqaEP55YjjGN/sibj1TXB8WFbEeOIw/9q169w/Il4nu+6PUgM6kMhCivOJOpR5X9gQAaQIDAQAB"

    invoke-direct {v0, p0, v1}, Lim/doit/pro/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    .line 188
    const-string v0, "Starting setup."

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    new-instance v1, Lim/doit/pro/activity/UpgradeToProActivity$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UpgradeToProActivity$4;-><init>(Lim/doit/pro/activity/UpgradeToProActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/billing/IabHelper;->startSetup(Lim/doit/pro/billing/IabHelper$OnIabSetupFinishedListener;)V

    .line 215
    return-void
.end method

.method private showIabResultFailedMessage(Lim/doit/pro/billing/IabResult;)V
    .locals 4
    .param p1, "result"    # Lim/doit/pro/billing/IabResult;

    .prologue
    .line 325
    invoke-virtual {p1}, Lim/doit/pro/billing/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/billing/IabResult;->getResponse()I

    move-result v1

    .line 329
    .local v1, "resultCode":I
    invoke-virtual {p1}, Lim/doit/pro/billing/IabResult;->getResponse()I

    move-result v2

    const/16 v3, -0x3ed

    if-eq v2, v3, :cond_0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lim/doit/pro/billing/IabResult;->getResponse()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    const v3, 0x7f0c0147

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "message":Ljava/lang/String;
    const/16 v2, -0x3f1

    if-ne v1, v2, :cond_2

    .line 335
    const v2, 0x7f0c0146

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_2
    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 85
    sget v0, Lim/doit/pro/activity/UpgradeToProActivity;->REQUEST_UPGRADE_CODE:I

    if-ne p1, v0, :cond_2

    .line 86
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lim/doit/pro/billing/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "onActivityResult handled by IABUtil."

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onBuyNowClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    invoke-virtual {v0}, Lim/doit/pro/billing/IabHelper;->subscriptionsSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const v0, 0x7f0c0146

    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    invoke-virtual {v0}, Lim/doit/pro/billing/IabHelper;->isSetupDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    const v0, 0x7f0c007e

    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    const-string v1, "im.doit.pro.v4.yearly"

    .line 182
    sget v2, Lim/doit/pro/activity/UpgradeToProActivity;->REQUEST_UPGRADE_CODE:I

    iget-object v3, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mPurchaseFinishedListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 181
    invoke-virtual {v0, p0, v1, v2, v3}, Lim/doit/pro/billing/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UpgradeToProActivity;->setContentView(I)V

    .line 108
    invoke-direct {p0}, Lim/doit/pro/activity/UpgradeToProActivity;->init()V

    .line 109
    invoke-direct {p0}, Lim/doit/pro/activity/UpgradeToProActivity;->setupBilling()V

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onDestroy()V

    .line 73
    iget-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    iget-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    invoke-virtual {v1}, Lim/doit/pro/billing/IabHelper;->dispose()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity;->mHelper:Lim/doit/pro/billing/IabHelper;

    .line 81
    :cond_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 65
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UpgradeToProActivity;->setResult(I)V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/UpgradeToProActivity;->finish()V

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UpgradeToProActivity;->setResult(I)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method verifyDeveloperPayload(Lim/doit/pro/billing/Purchase;)Z
    .locals 1
    .param p1, "p"    # Lim/doit/pro/billing/Purchase;

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method
