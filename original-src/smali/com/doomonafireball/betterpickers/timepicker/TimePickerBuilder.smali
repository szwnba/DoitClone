.class public Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;
.super Ljava/lang/Object;
.source "TimePickerBuilder.java"


# instance fields
.field private mReference:I

.field private mTimePickerDialogHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private styleResId:Ljava/lang/Integer;

.field private targetFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->mReference:I

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->mTimePickerDialogHandlers:Ljava/util/Vector;

    .line 15
    return-void
.end method


# virtual methods
.method public addTimePickerDialogHandler(Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;)Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->mTimePickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0
.end method

.method public removeTimePickerDialogHandler(Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;)Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;
    .locals 1
    .param p1, "handler"    # Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->mTimePickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 89
    return-object p0
.end method

.method public setFragmentManager(Landroid/support/v4/app/FragmentManager;)Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;
    .locals 0
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    .line 31
    return-object p0
.end method

.method public setReference(I)Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;
    .locals 0
    .param p1, "reference"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->mReference:I

    .line 65
    return-object p0
.end method

.method public setStyleResId(I)Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->styleResId:Ljava/lang/Integer;

    .line 43
    return-object p0
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;)Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;
    .locals 0
    .param p1, "targetFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    .line 54
    return-object p0
.end method

.method public show()V
    .locals 5

    .prologue
    .line 96
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->styleResId:Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 97
    :cond_0
    const-string v3, "TimePickerBuilder"

    const-string v4, "setFragmentManager() and setStyleResId() must be called."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 101
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->manager:Landroid/support/v4/app/FragmentManager;

    const-string v4, "time_dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 102
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 107
    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->mReference:I

    iget-object v4, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->styleResId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->newInstance(II)Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    move-result-object v0

    .line 108
    .local v0, "fragment":Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->targetFragment:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 111
    :cond_3
    iget-object v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerBuilder;->mTimePickerDialogHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->setTimePickerDialogHandlers(Ljava/util/Vector;)V

    .line 112
    const-string v3, "time_dialog"

    invoke-virtual {v0, v1, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method
