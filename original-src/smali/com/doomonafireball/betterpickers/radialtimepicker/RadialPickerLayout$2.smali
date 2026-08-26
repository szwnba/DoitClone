.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

.field private final synthetic val$isInnerCircle:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    iput-object p2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->val$isInnerCircle:[Ljava/lang/Boolean;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 610
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1, v5}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->access$2(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;Z)V

    .line 611
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->access$3(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->val$isInnerCircle:[Ljava/lang/Boolean;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->access$4(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;IZZZ)I

    move-result v0

    .line 613
    .local v0, "value":I
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->access$5(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;I)V

    .line 614
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-static {v1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->access$6(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;)Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    invoke-interface {v1, v2, v0, v4}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 615
    return-void
.end method
