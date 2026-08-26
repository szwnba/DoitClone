.class Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;
.super Ljava/lang/Object;
.source "UserNicknameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/UserNicknameEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCancelClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UserNicknameEditActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/UserNicknameEditActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/UserNicknameEditActivity;Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;-><init>(Lim/doit/pro/activity/UserNicknameEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/UserNicknameEditActivity;->finish()V

    .line 93
    return-void
.end method
