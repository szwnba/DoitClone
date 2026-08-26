.class Lim/doit/pro/ui/component/ReminderPopupPager$1;
.super Ljava/lang/Object;
.source "ReminderPopupPager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/ReminderPopupPager;->removeMessage(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

.field private final synthetic val$numMessage:I

.field private final synthetic val$totalMessages:I


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/ReminderPopupPager;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    iput p2, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->val$numMessage:I

    iput p3, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->val$totalMessages:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 108
    iget v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->val$numMessage:I

    iget-object v1, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    invoke-static {v1}, Lim/doit/pro/ui/component/ReminderPopupPager;->access$1(Lim/doit/pro/ui/component/ReminderPopupPager;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    invoke-static {v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->access$1(Lim/doit/pro/ui/component/ReminderPopupPager;)I

    move-result v0

    iget v1, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->val$totalMessages:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    invoke-static {v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->access$1(Lim/doit/pro/ui/component/ReminderPopupPager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/ReminderPopupPager;->access$2(Lim/doit/pro/ui/component/ReminderPopupPager;I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    invoke-static {v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->access$3(Lim/doit/pro/ui/component/ReminderPopupPager;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->val$numMessage:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 114
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    invoke-static {v0}, Lim/doit/pro/ui/component/ReminderPopupPager;->access$4(Lim/doit/pro/ui/component/ReminderPopupPager;)V

    .line 115
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/ReminderPopupPager;->access$0(Lim/doit/pro/ui/component/ReminderPopupPager;Z)V

    .line 116
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 103
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupPager$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupPager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/ReminderPopupPager;->access$0(Lim/doit/pro/ui/component/ReminderPopupPager;Z)V

    .line 104
    return-void
.end method
