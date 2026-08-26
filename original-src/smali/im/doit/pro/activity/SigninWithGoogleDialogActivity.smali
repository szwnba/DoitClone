.class public Lim/doit/pro/activity/SigninWithGoogleDialogActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "SigninWithGoogleDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ErrorDialogFragment;,
        Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private final REQUEST_ADD_GOOGLE_ACCOUNT_CODE:I

.field private final REQUEST_GOOGLE_ACCOUNT_AUTH_CODE:I

.field private final SCOPE:Ljava/lang/String;

.field private listAdapter:Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mDefaultEmail:Ljava/lang/String;

.field private mEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    .line 43
    const/16 v0, 0x3e8

    iput v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->REQUEST_ADD_GOOGLE_ACCOUNT_CODE:I

    .line 44
    const/16 v0, 0x7d0

    iput v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->REQUEST_GOOGLE_ACCOUNT_AUTH_CODE:I

    .line 46
    const-string v0, "oauth2:https://www.googleapis.com/auth/userinfo.profile"

    iput-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->SCOPE:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mEmails:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mDefaultEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mDefaultEmail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getGoogleAuth()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->toSigninWithGoogleWebView()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->toHome()V

    return-void
.end method

.method private getAccountNames()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 204
    iget-object v3, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 205
    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 206
    .local v0, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v1, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 210
    return-object v1

    .line 208
    :cond_0
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getGoogleAuth()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    .line 148
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    return-void
.end method

.method private showNotSupportMsg()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$8;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$8;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method private showOauthFailedMsg()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$9;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$9;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method private toHome()V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 349
    invoke-virtual {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->finish()V

    .line 350
    return-void
.end method

.method private toSigninWithGoogleWebView()V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->finish()V

    .line 356
    return-void
.end method


# virtual methods
.method getAndUseAuthTokenBlocking(Z)V
    .locals 11
    .param p1, "tryAgain"    # Z

    .prologue
    .line 238
    :try_start_0
    iget-object v9, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mDefaultEmail:Ljava/lang/String;

    .line 239
    const-string v10, "oauth2:https://www.googleapis.com/auth/userinfo.profile"

    .line 238
    invoke-static {p0, v9, v10}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "token":Ljava/lang/String;
    invoke-static {v6}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 241
    invoke-static {p0, v6}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    if-eqz p1, :cond_0

    .line 244
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getAndUseAuthTokenBlocking(Z)V

    .line 324
    .end local v6    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local v6    # "token":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v9

    .line 250
    iget-object v10, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mDefaultEmail:Ljava/lang/String;

    .line 249
    invoke-virtual {v9, v10, v6}, Lim/doit/pro/api/DoitAPI;->signinWithGoogle(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v4

    .line 251
    .local v4, "response":Lim/doit/pro/api/Response;
    new-instance v9, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;

    invoke-direct {v9, p0, v4}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;Lim/doit/pro/api/Response;)V

    invoke-virtual {p0, v9}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 281
    .end local v4    # "response":Lim/doit/pro/api/Response;
    .end local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 282
    .local v3, "playEx":Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;
    invoke-virtual {v3}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->printStackTrace()V

    .line 283
    invoke-virtual {v3}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getConnectionStatusCode()I

    move-result v1

    .line 284
    .local v1, "code":I
    new-instance v9, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$6;

    invoke-direct {v9, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$6;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    invoke-virtual {p0, v9}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 293
    .end local v1    # "code":I
    .end local v3    # "playEx":Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;
    :catch_1
    move-exception v8

    .line 295
    .local v8, "userAuthEx":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    invoke-virtual {v8}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 296
    const/16 v10, 0x7d0

    .line 295
    invoke-virtual {p0, v9, v10}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 298
    .end local v8    # "userAuthEx":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    :catch_2
    move-exception v7

    .line 300
    .local v7, "transientEx":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    new-instance v9, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$7;

    invoke-direct {v9, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$7;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    invoke-virtual {p0, v9}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 309
    .end local v7    # "transientEx":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 313
    .local v0, "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->printStackTrace()V

    .line 314
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->showOauthFailedMsg()V

    goto :goto_0

    .line 316
    .end local v0    # "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    :catch_4
    move-exception v5

    .line 317
    .local v5, "securityEx":Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 318
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->showNotSupportMsg()V

    goto :goto_0

    .line 320
    .end local v5    # "securityEx":Ljava/lang/SecurityException;
    :catch_5
    move-exception v2

    .line 321
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 322
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->showNotSupportMsg()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 101
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 102
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_3

    .line 103
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getAccountNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 104
    .local v0, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    :goto_0
    iput-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mEmails:Ljava/util/ArrayList;

    .line 113
    iget-object v2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->listAdapter:Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;->notifyDataSetChanged()V

    .line 118
    .end local v0    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 119
    return-void

    .line 104
    .restart local v0    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "item":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mEmails:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    iput-object v1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mDefaultEmail:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getGoogleAuth()V

    goto :goto_0

    .line 114
    .end local v0    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "item":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x7d0

    if-ne p1, v2, :cond_1

    .line 115
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getGoogleAuth()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f03004f

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getAccountNames()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->mEmails:Ljava/util/ArrayList;

    .line 60
    const v2, 0x7f0b003a

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->titleView:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0b0105

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "addBtn":Landroid/widget/TextView;
    const v2, 0x7f0b0092

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 63
    .local v1, "cancelBtn":Landroid/widget/Button;
    const v2, 0x7f0b0069

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->listView:Landroid/widget/ListView;

    .line 64
    iget-object v2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->titleView:Landroid/widget/TextView;

    const v3, 0x7f0c006c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 65
    new-instance v2, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;)V

    iput-object v2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->listAdapter:Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;

    .line 66
    iget-object v2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->listAdapter:Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$1;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$1;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    new-instance v2, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$2;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$2;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v2, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$3;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$3;-><init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method protected toLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    return-void
.end method
