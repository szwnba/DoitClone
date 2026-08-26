.class Lim/doit/pro/activity/SigninWithGoogleDialogActivity$2;
.super Ljava/lang/Object;
.source "SigninWithGoogleDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    new-instance v2, Landroid/content/Intent;

    .line 83
    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    const/16 v3, 0x3e8

    .line 82
    invoke-virtual {v1, v2, v3}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v1}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$5(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    goto :goto_0
.end method
