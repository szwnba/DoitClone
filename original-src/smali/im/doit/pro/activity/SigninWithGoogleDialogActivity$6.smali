.class Lim/doit/pro/activity/SigninWithGoogleDialogActivity$6;
.super Ljava/lang/Object;
.source "SigninWithGoogleDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getAndUseAuthTokenBlocking(Z)V
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
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$6;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$6;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    .line 290
    const v1, 0x7f0c0083

    const/4 v2, 0x1

    .line 289
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    return-void
.end method
