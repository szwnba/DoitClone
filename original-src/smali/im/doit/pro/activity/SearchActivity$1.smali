.class Lim/doit/pro/activity/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SearchActivity;->focusOnSearchInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SearchActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SearchActivity$1;->this$0:Lim/doit/pro/activity/SearchActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$1;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$4(Lim/doit/pro/activity/SearchActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 90
    return-void
.end method
