.class public Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/pullrefresh/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/Options;

    invoke-direct {v0}, Lim/doit/pro/ui/component/pullrefresh/Options;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    .line 40
    return-void
.end method


# virtual methods
.method public build()Lim/doit/pro/ui/component/pullrefresh/Options;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    return-object v0
.end method

.method public environmentDelegate(Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;)Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 1
    .param p1, "environmentDelegate"    # Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    iput-object p1, v0, Lim/doit/pro/ui/component/pullrefresh/Options;->environmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    .line 49
    return-object p0
.end method

.method public headerLayout(I)Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 1
    .param p1, "headerLayoutId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    iput p1, v0, Lim/doit/pro/ui/component/pullrefresh/Options;->headerLayout:I

    .line 58
    return-object p0
.end method

.method public headerTransformer(Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;)Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 1
    .param p1, "headerTransformer"    # Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    .prologue
    .line 66
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    iput-object p1, v0, Lim/doit/pro/ui/component/pullrefresh/Options;->headerTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    .line 67
    return-object p0
.end method

.method public minimize()Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->minimize(I)Lim/doit/pro/ui/component/pullrefresh/Options$Builder;

    move-result-object v0

    return-object v0
.end method

.method public minimize(I)Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 2
    .param p1, "delay"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    iput p1, v0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshMinimizeDelay:I

    .line 110
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshMinimize:Z

    .line 111
    return-object p0
.end method

.method public noMinimize()Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshMinimize:Z

    .line 94
    return-object p0
.end method

.method public refreshOnUp(Z)Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    iput-boolean p1, v0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshOnUp:Z

    .line 85
    return-object p0
.end method

.method public scrollDistance(F)Lim/doit/pro/ui/component/pullrefresh/Options$Builder;
    .locals 1
    .param p1, "refreshScrollDistance"    # F

    .prologue
    .line 75
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/Options$Builder;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    iput p1, v0, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshScrollDistance:F

    .line 76
    return-object p0
.end method
