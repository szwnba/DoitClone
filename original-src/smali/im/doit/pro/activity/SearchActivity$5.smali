.class Lim/doit/pro/activity/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SearchActivity;->initListener()V
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
    iput-object p1, p0, Lim/doit/pro/activity/SearchActivity$5;->this$0:Lim/doit/pro/activity/SearchActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$5;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$4(Lim/doit/pro/activity/SearchActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$5;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0, v1}, Lim/doit/pro/activity/SearchActivity;->access$5(Lim/doit/pro/activity/SearchActivity;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$5;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$7(Lim/doit/pro/activity/SearchActivity;)V

    .line 166
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$5;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$8(Lim/doit/pro/activity/SearchActivity;)V

    .line 167
    return-void
.end method
