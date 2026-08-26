.class Lim/doit/pro/ui/component/LabelTextView$1;
.super Ljava/lang/Object;
.source "LabelTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/LabelTextView;->registerListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/LabelTextView;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/LabelTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelTextView$1;->this$0:Lim/doit/pro/ui/component/LabelTextView;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView$1;->this$0:Lim/doit/pro/ui/component/LabelTextView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LabelTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView$1;->this$0:Lim/doit/pro/ui/component/LabelTextView;

    invoke-static {v0}, Lim/doit/pro/ui/component/LabelTextView;->access$0(Lim/doit/pro/ui/component/LabelTextView;)Lim/doit/pro/activity/listener/OnLayoutClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView$1;->this$0:Lim/doit/pro/ui/component/LabelTextView;

    invoke-static {v0}, Lim/doit/pro/ui/component/LabelTextView;->access$0(Lim/doit/pro/ui/component/LabelTextView;)Lim/doit/pro/activity/listener/OnLayoutClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listener/OnLayoutClickListener;->click(Landroid/view/View;)V

    goto :goto_0
.end method
