.class Lim/doit/pro/activity/AccountInfoActivity$1;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AccountInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AccountInfoActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity$1;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/AccountInfoActivity$1;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity$1;->takePhoto()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/AccountInfoActivity$1;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lim/doit/pro/activity/AccountInfoActivity$1;->choosePhoto()V

    return-void
.end method

.method private choosePhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 294
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 295
    const-string v2, "android.intent.action.PICK"

    .line 296
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 294
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 297
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity$1;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lim/doit/pro/activity/AccountInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 298
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 300
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity$1;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    invoke-virtual {v2, v1, v4}, Lim/doit/pro/activity/AccountInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private takePhoto()V
    .locals 8

    .prologue
    .line 281
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 283
    const-string v4, "/doit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "doitDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 285
    iget-object v3, p0, Lim/doit/pro/activity/AccountInfoActivity$1;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/doit/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v3, v4}, Lim/doit/pro/activity/AccountInfoActivity;->access$1(Lim/doit/pro/activity/AccountInfoActivity;Ljava/lang/String;)V

    .line 287
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lim/doit/pro/activity/AccountInfoActivity$1;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    invoke-static {v3}, Lim/doit/pro/activity/AccountInfoActivity;->access$2(Lim/doit/pro/activity/AccountInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, "photo":Ljava/io/File;
    const-string v3, "output"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    iget-object v3, p0, Lim/doit/pro/activity/AccountInfoActivity$1;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Lim/doit/pro/activity/AccountInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 290
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 255
    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity$1;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 254
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 257
    .local v1, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f0c011a

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 258
    const/4 v2, 0x1

    const v3, 0x7f0c011b

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 259
    const/4 v2, 0x2

    const v3, 0x7f0c002c

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 260
    new-instance v2, Lim/doit/pro/activity/AccountInfoActivity$1$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/AccountInfoActivity$1$1;-><init>(Lim/doit/pro/activity/AccountInfoActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    iget-object v2, p0, Lim/doit/pro/activity/AccountInfoActivity$1;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/activity/AccountInfoActivity;->access$0(Lim/doit/pro/activity/AccountInfoActivity;Landroid/app/AlertDialog;)V

    .line 278
    return-void
.end method
