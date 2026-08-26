.class public Lim/doit/pro/activity/AccountInfoActivity;
.super Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;
.source "AccountInfoActivity.java"


# instance fields
.field private final REQUEST_CHOOSE_PHOTO:I

.field private final REQUEST_GENDER_EDIT:I

.field private final REQUEST_NICKNAME_EDIT:I

.field private final REQUEST_RENEW:I

.field private final REQUEST_TAKE_PHOTO:I

.field private avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

.field private avatarWrap:Landroid/widget/RelativeLayout;

.field private birthdayView:Lim/doit/pro/ui/component/LabelTextView;

.field private emailView:Lim/doit/pro/ui/component/LabelTextView;

.field private genderView:Lim/doit/pro/ui/component/LabelTextView;

.field private isLogouting:Z

.field private logoutDialog:Landroid/app/AlertDialog;

.field private nickNameView:Lim/doit/pro/ui/component/LabelTextView;

.field private onAvatarClick:Landroid/view/View$OnClickListener;

.field private onBirthdayClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onGenderClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onNicknameClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onRenewClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private photoPath:Ljava/lang/String;

.field private proExpiresOnView:Lim/doit/pro/ui/component/LabelTextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private renewBtn:Lim/doit/pro/ui/component/LabelArrowButton;

.field private serverView:Lim/doit/pro/ui/component/LabelTextView;

.field private user:Lim/doit/pro/model/User;

.field private userNameView:Lim/doit/pro/ui/component/LabelTextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;-><init>()V

    .line 45
    iput v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->REQUEST_NICKNAME_EDIT:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->REQUEST_GENDER_EDIT:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->REQUEST_TAKE_PHOTO:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->REQUEST_CHOOSE_PHOTO:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->REQUEST_RENEW:I

    .line 51
    iput-boolean v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->isLogouting:Z

    .line 250
    new-instance v0, Lim/doit/pro/activity/AccountInfoActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AccountInfoActivity$1;-><init>(Lim/doit/pro/activity/AccountInfoActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->onAvatarClick:Landroid/view/View$OnClickListener;

    .line 307
    new-instance v0, Lim/doit/pro/activity/AccountInfoActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AccountInfoActivity$2;-><init>(Lim/doit/pro/activity/AccountInfoActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->onNicknameClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 318
    new-instance v0, Lim/doit/pro/activity/AccountInfoActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AccountInfoActivity$3;-><init>(Lim/doit/pro/activity/AccountInfoActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->onGenderClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 328
    new-instance v0, Lim/doit/pro/activity/AccountInfoActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AccountInfoActivity$4;-><init>(Lim/doit/pro/activity/AccountInfoActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->onBirthdayClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 347
    new-instance v0, Lim/doit/pro/activity/AccountInfoActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AccountInfoActivity$5;-><init>(Lim/doit/pro/activity/AccountInfoActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->onRenewClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/AccountInfoActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity;->logoutDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/AccountInfoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity;->photoPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/AccountInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->photoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/AccountInfoActivity;)Lim/doit/pro/model/User;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setBirthdayViewContent()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->onLogoutAfterSyncClick()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->onLogoutNowClick()V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->onLogoutCancelClick()V

    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "targetW"    # I
    .param p3, "targetH"    # I

    .prologue
    .line 451
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 452
    .local v1, "photoW":I
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 453
    .local v0, "photoH":I
    div-int v2, v1, p2

    div-int v3, v0, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getSmallBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xc8

    const/4 v2, 0x1

    .line 434
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 435
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 436
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 439
    invoke-direct {p0, v0, v1, v1}, Lim/doit/pro/activity/AccountInfoActivity;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 442
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 443
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 445
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->initData()V

    .line 131
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->initView()V

    .line 132
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->initViewContent()V

    .line 133
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->initListener()V

    .line 134
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 160
    invoke-virtual {p0}, Lim/doit/pro/activity/AccountInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 161
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c0103

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 163
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 164
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 166
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    .line 138
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->avatarWrap:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->onAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->nickNameView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->onNicknameClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 245
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->genderView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->onGenderClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 246
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->birthdayView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->onBirthdayClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 247
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->renewBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->onRenewClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 248
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const v2, 0x106000b

    .line 141
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->initActionBar()V

    .line 142
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->avatarWrap:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->avatarWrap:Landroid/widget/RelativeLayout;

    .line 144
    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 143
    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 145
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->nickNameView:Lim/doit/pro/ui/component/LabelTextView;

    .line 146
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->genderView:Lim/doit/pro/ui/component/LabelTextView;

    .line 147
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->birthdayView:Lim/doit/pro/ui/component/LabelTextView;

    .line 148
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->birthdayView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/LabelTextView;->setBackgroundResource(I)V

    .line 150
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->userNameView:Lim/doit/pro/ui/component/LabelTextView;

    .line 151
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->emailView:Lim/doit/pro/ui/component/LabelTextView;

    .line 152
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->serverView:Lim/doit/pro/ui/component/LabelTextView;

    .line 153
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->serverView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/LabelTextView;->setBackgroundResource(I)V

    .line 155
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->proExpiresOnView:Lim/doit/pro/ui/component/LabelTextView;

    .line 156
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->renewBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 157
    return-void
.end method

.method private initViewContent()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setNicknameViewContent()V

    .line 172
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setGenderViewContent()V

    .line 173
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setBirthdayViewContent()V

    .line 174
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setUsernameViewContent()V

    .line 175
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setEmailViewContent()V

    .line 176
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setServerViewContent()V

    .line 177
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setProExpiresOnViewContent()V

    .line 178
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setRenewBtnViewContent()V

    .line 181
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 183
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 185
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 186
    return-void
.end method

.method private logoutAndClearData()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->mApp:Lim/doit/pro/activity/DoitApp;

    invoke-virtual {v0, p0}, Lim/doit/pro/activity/DoitApp;->logout(Landroid/app/Activity;)V

    .line 458
    return-void
.end method

.method private onLogoutAfterSyncClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 384
    iput-boolean v3, p0, Lim/doit/pro/activity/AccountInfoActivity;->isLogouting:Z

    .line 385
    const-string v0, ""

    .line 386
    const v1, 0x7f0c0117

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 385
    invoke-static {p0, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 387
    invoke-static {p0}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcast(Landroid/content/Context;)V

    .line 388
    return-void
.end method

.method private onLogoutCancelClick()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->logoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 397
    return-void
.end method

.method private onLogoutNowClick()V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->logoutAndClearData()V

    .line 392
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->logoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 393
    return-void
.end method

.method private saveAvatar(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AccountInfoActivity;->getSmallBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 416
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 419
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    .line 420
    invoke-virtual {v3}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 419
    invoke-virtual {v2, v3, v4}, Lim/doit/pro/db/persist/UserDao;->updataAvatarAndSaveLog(Ljava/lang/String;[B)V

    .line 421
    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->sendUploadAvatar()V

    goto :goto_0
.end method

.method private sendUploadAvatar()V
    .locals 3

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/service/DoitService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "sync_type"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 430
    return-void
.end method

.method private setBirthdayViewContent()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->birthdayView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getBirthday()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private setEmailViewContent()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->emailView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private setGenderViewContent()V
    .locals 3

    .prologue
    .line 193
    const v0, 0x7f0c0038

    .line 194
    .local v0, "gender":I
    const-string v1, "female"

    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const v0, 0x7f0c0218

    .line 199
    :cond_0
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->genderView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 200
    return-void

    .line 196
    :cond_1
    const-string v1, "male"

    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const v0, 0x7f0c0217

    goto :goto_0
.end method

.method private setNicknameViewContent()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->nickNameView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private setProExpiresOnViewContent()V
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getPayEndAt()Ljava/util/Calendar;

    move-result-object v0

    .line 225
    .local v0, "payEndAt":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->proExpiresOnView:Lim/doit/pro/ui/component/LabelTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->proExpiresOnView:Lim/doit/pro/ui/component/LabelTextView;

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->proExpiresOnView:Lim/doit/pro/ui/component/LabelTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRenewBtnViewContent()V
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getPayEndAt()Ljava/util/Calendar;

    move-result-object v0

    .line 235
    .local v0, "payEndAt":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->renewBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->renewBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setServerViewContent()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "server":Ljava/lang/String;
    const-string v1, "japan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->serverView:Lim/doit/pro/ui/component/LabelTextView;

    const v2, 0x7f0c007c

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->serverView:Lim/doit/pro/ui/component/LabelTextView;

    const v2, 0x7f0c007d

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUsernameViewContent()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->userNameView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected afterSync(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 401
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 404
    :cond_0
    iget-boolean v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->isLogouting:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 405
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->logoutAndClearData()V

    .line 407
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->isLogouting:Z

    .line 408
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    :cond_1
    return-void

    .line 76
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 77
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    const-string v2, "nickname"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/User;->setNickname(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 79
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setNicknameViewContent()V

    goto :goto_0

    .line 83
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 84
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setGenderViewContent()V

    goto :goto_0

    .line 88
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 89
    iget-object v0, p0, Lim/doit/pro/activity/AccountInfoActivity;->photoPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->saveAvatar(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 94
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 95
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lim/doit/pro/activity/AccountInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "photoPath":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 104
    invoke-direct {p0, v7}, Lim/doit/pro/activity/AccountInfoActivity;->saveAvatar(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "photoPath":Ljava/lang/String;
    :pswitch_4
    if-ne p2, v0, :cond_0

    .line 109
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->setProExpiresOnViewContent()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AccountInfoActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity;->init()V

    .line 70
    return-void
.end method

.method public onLogoutClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 360
    .local v1, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f0c011c

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 361
    const/4 v2, 0x1

    const v3, 0x7f0c011d

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 362
    const/4 v2, 0x2

    const v3, 0x7f0c002c

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 363
    new-instance v2, Lim/doit/pro/activity/AccountInfoActivity$6;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/AccountInfoActivity$6;-><init>(Lim/doit/pro/activity/AccountInfoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity;->logoutDialog:Landroid/app/AlertDialog;

    .line 381
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/AccountInfoActivity;->finish()V

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
