.class Lim/doit/pro/activity/SigninWithGoogleDialogActivity$9;
.super Ljava/lang/Object;
.source "SigninWithGoogleDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->showOauthFailedMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$9;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    const v0, 0x7f0c006d

    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 342
    return-void
.end method
